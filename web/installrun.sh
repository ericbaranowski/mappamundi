#!/bin/bash

set -x

npm install
# we proxy to the webpack hotreload dev server via caddy
vendor/linux/caddy -agree -conf /code/Caddyfile-dev
