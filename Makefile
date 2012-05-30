
.PHONY: coverage

coverage:
	@echo "Starting ..."
	INTEGRATION=1 nosetests -v \
		--cover-html \
		--cover-html-dir=./coverage \
		--with-coverage --cover-package=arango

tests:
	INTEGRATION=1 nosetests -v

test: tests

fast:
	nosetests -v

one:
	INTEGRATION=1 nosetests -v arango.tests.$(DST)
