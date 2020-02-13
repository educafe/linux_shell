#!/bin/bash
# -x option could be given along with shebang

PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}() '

function debug() {
  echo "Executing: $@"
  $@
}

set -x
debug ls
set +x