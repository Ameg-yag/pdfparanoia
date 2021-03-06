SHELL := /bin/bash

test:
	nosetests -s --verbosity=2

clean:
	rm -fr build dist
	rm -fr *.egg-info
	find . -name *.pyc -exec rm {} \;
	find . -name *.swp -exec rm {} \;

install:
	python3 setup.py install

upload: clean
	python3 setup.py sdist upload

