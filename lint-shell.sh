#!/usr/bin/env bash

set -o errexit -o noclobber -o nounset
shopt -s globstar

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

git ls-files -z -- "${directory}/bash/**" | xargs --no-run-if-empty --null shellcheck --severity=error --shell=bash
