
MVN=mvn

all: core cli morre diff-core diff-cli diff-rest

clean:
	cd masymos-core && $(MVN) clean
	cd masymos-cli && $(MVN) clean
	cd masymos-morre && $(MVN) clean
	cd masymos-diff && $(MVN) clean
	cd masymos-diff-cli && $(MVN) clean
	cd masymos-diff-rest && $(MVN) clean

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

diff-rest: diff-core core
	cd masymos-diff-rest && $(MVN) package

neo4j: all

