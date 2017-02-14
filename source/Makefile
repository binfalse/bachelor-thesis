
MVN=mvn
PATCH=patch

all: core cli morre diff-core diff-cli diff-rest

clean:
	cd masymos-core && $(MVN) clean
	cd masymos-cli && $(MVN) clean
	cd masymos-morre && $(MVN) clean
	cd masymos-diff && $(MVN) clean
	cd masymos-diff-cli && $(MVN) clean
	cd masymos-diff-rest && $(MVN) clean
	rm -rf neo4j
	cd ModelCrawler/ModelCrawler && $(MVN) clean

core:
	cd masymos-core && $(MVN) install

cli: core
	cd masymos-cli && $(MVN) package

morre: core
	cd masymos-morre && $(MVN) package

diff-core: core
	cd masymos-diff && $(MVN) install

diff-cli: diff-core core cli
	cd masymos-diff-cli && $(MVN) package

diff-rest: diff-core core morre
	cd masymos-diff-rest && $(MVN) package

neo4j: diff-rest
	# download neo4j 3.0.3 community, if necessary
	test -e neo4j-community-3.0.3-unix.tar.gz || wget "https://neo4j.com/artifact.php?name=neo4j-community-3.0.3-unix.tar.gz" -O neo4j-community-3.0.3-unix.tar.gz

	# unpack neo4j and rename target dir
	tar -xzf neo4j-community-3.0.3-unix.tar.gz
	test -d neo4j || mkdir neo4j
	mv -fb -t neo4j ./neo4j-community-3.0.3/*
	rm -rf neo4j-community-3.0.3

	# copy libraries and plugins
	test -d neo4j/lib/masymos && rm -rf neo4j/lib/masymos || echo ""
	mkdir neo4j/lib/masymos
	cp -fr masymos-diff-rest/target/lib/* neo4j/lib/masymos
	chmod +x neo4j/lib/masymos/*
	cp -f masymos-diff-rest/target/masymos-diff-ws-0.0.1-SNAPSHOT.jar neo4j/plugins
	cp -f masymos-morre/target/masymos-morre-0.9.1.jar neo4j/plugins

	# patch the config files
	$(PATCH) neo4j/conf/neo4j.conf neo4j.conf.patch
	$(PATCH) neo4j/conf/neo4j-wrapper.conf neo4j-wrapper.conf.patch
	$(PATCH) neo4j/bin/neo4j-shared.sh neo4j-shared.sh.patch

modelcrawler:
	cd ModelCrawler/ModelCrawler && $(MVN) package
