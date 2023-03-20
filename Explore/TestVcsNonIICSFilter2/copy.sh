#!/bin/bash

PREV_DIR="$(pwd)"
SCRIPT_DIR="$(dirname "$0")"
cd "$SCRIPT_DIR"
. ./env.sh
. ./common-functions.sh

# exit on error
set -eu -o pipefail

# Call abort function if any error
trap 'abort' EXIT

# list of services that have post deploy recipes

["callback"]="callback-service" ["runtime"]="runtime" ["ac"]="ac")

services="$@"

if [[ -z "$services" ]]; then

fi

echo "=== Running post deploy for services: ${services[@]}"

if $IS_LIGHT ; then
   
	done
else
    # if the service has been started, run post-deploy recipe after healthcheck returns true 
   
    done
fi

# reset trap
trap - EXIT

cd "$PREV_DIR"
