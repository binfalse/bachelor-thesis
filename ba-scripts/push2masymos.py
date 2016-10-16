#!/usr/bin/python3
# This is a tool to semi automatically push model files to MaSyMoS
# using the REST Endpoints

import yaml
import requests
import argparse

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
        'http_path': '/models/{file_id}/{version_id}.xml'
        }


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
    with open(config_file, 'r') as fhandler:
        content = fhandler.read()
    return yaml.safe_load(content)


def generate_paths():
    """
    builds a dict mapping http paths to a model file in the filesystem.
    Also extends to config object, with the generated http path
    """
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

    return path_dict

if __name__ == "__main__":
    # module is started as cmd program
    parser = argparse.ArgumentParser()
    parser.add_argument("config", help="path to the yaml config file")
    parser.add_argument("-d", "--daemon", help="Daemonize after pushing all models. (Does not close the HTTP Server)", action="store_true")
    parser.add_argument("-n", "--no-push", help="Does not push anythin, but just serves the models via HTTP. Implies -d", action="store_true")

    args = parser.parse_args()

    # loads the main config from file
    config = load_config(args.config)
    # update default settings, with the config vars
    settings.update(config["settings"])

    # generate http paths
    # prepare and start HTTP server
    request_handler = RequestHandler
    request_handler.path_dict = generate_paths()
    httpd = socketserver.TCPServer(("", settings["http_port"]), RequestHandler)

    print(yaml.dump(config))
    # creates a separate thread, to handle the httpd and starts it
    httpd_thread = threading.Thread(target=httpd.serve_forever)
    httpd_thread.start()

    if args.daemon or args.no_push:
        # needs to daemonize
        # wait for httpd thread
        while True:
            if input("Press Q to quit") == "Q":
                print("exiting...")
                break

    time.sleep(1)
    # shuts down the httpd and waits until the separate thread ended
    # successfully
    httpd.shutdown()
    httpd_thread.join()
