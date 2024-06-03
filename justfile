#!/usr/bin/env just --justfile

hello:
  echo "hello world"

view-coverage:
  very_good test --coverage lib
  genhtml coverage/lcov.info -o coverage
  open coverage/index.html
