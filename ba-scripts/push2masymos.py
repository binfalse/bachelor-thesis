#!/usr/bin/python3
# This is a tool to semi automatically push model files to MaSyMoS
# using the REST Endpoints

import logging

import yaml
import json
import requests
import argparse
import urllib.parse
import threading
import http.server
import socketserver
import os
import time

# central config variable
config = {}
# dict with default settings, gets overwritten with values from the config
settings = {
        'http_port': 8080,
        'http_path': "/models/{file_id}/{version_id}.xml",
        'http_hostname': 'localhost',
        'masymos_url': "http://localhost:7474/morre/",
        }

log = None


class RequestHandler(http.server.SimpleHTTPRequestHandler):
    """
    class handling the http requests for models
    """
    path_dict = {}

    def send_head(self):
        """
        modfies the path, before invoking the actual send_head method,
        so the access is limited to the models to serve
        """
        f = None

        # check if original http path is in path_dict
        #
        if self.path in self.path_dict:
            # all good. lets serve this file
            file_path = self.path_dict[self.path]
            ctype = self.guess_type(file_path)
            try:
                f = open(file_path, 'rb')
            except OSError:
                self.send_error(http.HTTPStatus.NOT_FOUND, "OS Exception while serving the file.")
                return None

            try:
                self.send_response(http.HTTPStatus.OK)
                self.send_header("Content-Type", ctype)
                fstat = os.fstat(f.fileno())
                self.send_header("Content-Length", str(fstat.st_size))
                self.send_header("Last-Modified", self.date_time_string(fstat.st_mtime))
                self.end_headers()
                return f
            except:
                f.close()
                raise
        else:
            # nop. return error code
            self.send_error(http.HTTPStatus.NOT_FOUND, "Model not found")
            return None

        if self.path in self.path_dict:
            # is a valid path
            return super().send_head()
        else:
            self.send_error(http.HTTPStatus.NOT_FOUND, "Model not found")
            return None


def load_config(config_file):
    """
    Loads and parses the main config file and returns it as a map.
    """
    # load file content
    log.info("reading config file {file}".format(file=config_file))
    with open(config_file, 'r') as fhandler:
        content = fhandler.read()
    return yaml.safe_load(content)


def generate_paths():
    """
    builds a dict mapping http paths to a model file in the filesystem.
    Also extends to config object, with the generated http path
    """
    log.info("generating http paths for model files")
    path_dict = {}
    for model in config['models']:
        for version in model['versions']:
            # generate a cloned dict from the model and the version hierarchy,
            # to use as format dict
            kwargs = model.copy()
            del kwargs['versions']
            kwargs.update(version)

            http_path = settings['http_path'].format(**kwargs)
            path_dict[http_path] = version['path']
            version['http_path'] = http_path
            log.debug('linking {http} -> {fs}'.format(http=http_path, fs=version['path']))

    return path_dict

def push_models():
    """
    does the actual model-push to masymos
    """
    # generate the endpoint url
    add_model_url = urllib.parse.urljoin(settings["masymos_url"], "model_update_service/add_model_version")
    log.info("start pushing model to masymos, using {url}".format(url=add_model_url))

    for model in config["models"]:
        prior_version = None
        log.info("processing changeset for model '{file_id}'".format(file_id=model['file_id']))

        for version in model["versions"]:
            # generate payload dict
            payload = {
                    'fileId': model['file_id'],
                    'versionId': version['version_id'],
                    'xmldoc': urllib.parse.urljoin('http://{host}:{port}/'.format(host=settings['http_hostname'], port=settings['http_port']), version['http_path']),
                    'modelType': model['model_type'],
                    'metaMap': version['meta'],
                    'parentMap': {model['file_id']: [prior_version]} if prior_version else {},
                }

            log.info("push version '{version_id}'".format(version_id=version['version_id']))
            log.debug(json.dumps(payload))
            resp = requests.post(add_model_url,
                    headers={
                        'Content-Type': 'application/json',
                    },
                    data=json.dumps(payload),
                )

            log.debug("...done")
            if resp.status_code != requests.codes.ok:
                # http error
                log.error("HTTP error {code}, while pushing model '{file_id}' in version '{version_id}' to masymos. Skip following versions of this model".format(
                    code=resp.status_code, file_id=model['file_id'], version_id=version['version_id']), extra={'model': model, 'version': version})
                break
            else:
                # http ok -> check response json
                try:
                    data = resp.json()
                    log.debug(data)
                    if isinstance(data, dict) and data.get('ok', False) in (True, 'true'):
                        log.info("success!")
                        # set prior version, to establish history
                        prior_version = version['version_id']
                    elif isinstance(data, (tuple, list)):
                        log.error("Masymos exception '{error}', while pushing model '{file_id}' in version '{version_id}' to masymos. Skip following versions of this model.".format(
                            error=','.join(data), file_id=model['file_id'], version_id=version['version_id']), extra={'model': model, 'version': version, 'data': data})
                    else:
                        log.error("Unknown masymos error, while pushing model '{file_id}' in version '{version_id}' to masymos. Skip following versions of this model".format(
                            json=json.dumps(data), file_id=model['file_id'], version_id=version['version_id']), extra={'model': model, 'version': version, 'data': data})
                        break

                except Exception as e:
                    log.exception("Could not parse json response. Skip following versions of this model.", e)
                    break


if __name__ == "__main__":
    # module is started as cmd program
    parser = argparse.ArgumentParser()
    parser.add_argument("config", help="path to the yaml config file")
    parser.add_argument("--log", help="defines the log level", default="WARNING")
    parser.add_argument("-d", "--daemon", help="Daemonize after pushing all models. (Does not close the HTTP Server)", default="False", action="store_true")
    parser.add_argument("-n", "--no-push", help="Does not push anythin, but just serves the models via HTTP. Implies -d", default="False", action="store_true")

    args = parser.parse_args()

    if args.log:
        num_log_level = getattr(logging, args.log.upper(), None)
        if not isinstance(num_log_level, int):
            raise ValueError("{level} is not a valid log level".format(level=args.log))
        logging.basicConfig(level=num_log_level)

    log = logging.getLogger('push2masymos')
    log.info("push2masymos started")

    # loads the main config from file
    config = load_config(args.config)
    # update default settings, with the config vars
    settings.update(config["settings"])

    # generate http paths
    # prepare and start HTTP server
    request_handler = RequestHandler
    request_handler.path_dict = generate_paths()
    httpd = socketserver.TCPServer(("", settings["http_port"]), RequestHandler)

    # creates a separate thread, to handle the httpd and starts it
    httpd_thread = threading.Thread(target=httpd.serve_forever)
    httpd_thread.start()

    # do the actual pushing
    if args.no_push is not True:
        log.info("start pushing models to masymos")
        push_models()
    else:
        log.info("skip pushing")

    if args.daemon is True or args.no_push is True:
        # needs to daemonize
        # wait for httpd thread
        while True:
            if input("Press Q to quit") == "Q":
                print("exiting...")
                break

    time.sleep(1)
    # shuts down the httpd and waits until the separate thread ended
    # successfully
    log.info("send shutdown to httpd thread")
    httpd.shutdown()
    log.info("wait for httpd thread termination")
    httpd_thread.join()
    log.info("exiting")
