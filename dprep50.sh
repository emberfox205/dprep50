#!/bin/bash
set -e
set -u
set -o pipefail

url=$1
destination=$2
regex_pattern="^ *https://cdn\.cs50\.net/\S+/((\S+).zip)$"

# This redirects back to the codespace directory
cd ~ && cd .. && cd .. && cd workspaces/*/

# Handle optional destination argument
if [ -n "$destination" ]; then
    if [ ! -d "$destination" ]; then
        mkdir "$destination"
    fi
    cd "$destination"
fi

# The main script
if [[ "$url" =~ $regex_pattern ]]; then
    wget "$url"
    unzip "${BASH_REMATCH[1]}"
    rm -f "${BASH_REMATCH[1]}"
    cd "${BASH_REMATCH[2]}"
    ls
else
    echo "Typed URL:" "$url"
    echo "Matched URL:" "${BASH_REMATCH[1]}"
    echo "Invalid URL. Please get the URL immediately following the 'wget' command in the pset's 'Distribution Code'"
fi
