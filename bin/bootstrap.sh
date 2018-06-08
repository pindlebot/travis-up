#!/usr/bin/env bash
dir=$(dirname $(dirname $PWD))
curl -sfo "$dir/install.sh" https://up.apex.sh/install
sh "$dir/install.sh" -b "$dir/bin"
"$dir/bin/up" version