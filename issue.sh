#!/usr/bin/env bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

set -x

pushd provides-data-file
runghc Setup.hs configure --enable-relocatable --user
runghc Setup.hs build
runghc Setup.hs install
popd

pushd embeds-data-file
runghc Setup.hs configure --enable-relocatable --user
runghc Setup.hs build
runghc Setup.hs install
popd
