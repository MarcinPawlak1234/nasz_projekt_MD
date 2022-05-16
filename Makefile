#!/usr/bin/env bash

echo "Poczatkowe single point of entry"

deps:
  pip install -r requirements.txt; \
  pip install -r test_requirements.txt

lint:
  flake8 hello_world test

test:
  PYTHONPATH=. py.test
  PYTHONPATH=. py.test --verbose -s

run:
  python -m venv env
  source .venv/bin/activate

.PHONY: test