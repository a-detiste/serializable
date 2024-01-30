#!/bin/bash
set -o errexit

# getting false positives due to this issue with pylint:
# https://bitbucket.org/logilab/pylint/issues/701/false-positives-with-not-an-iterable-and

find serializable tests -name '*.py' \
  | xargs pylint \
  --errors-only \
  --disable=unsubscriptable-object,not-an-iterable

echo 'Passes pylint check'
