#!/bin/sh

docker run -it --rm \
       -v "$(pwd)"/website:/srv/jekyll \
       -v "$(pwd)"/.docker-cache:/usr/local/bundle \
       -e JEKYLL_ROOTLESS=1 \
       jekyll/jekyll:4.2.0 \
       jekyll build
