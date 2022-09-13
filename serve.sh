#!/bin/sh

docker run -it --rm \
       -v "$(pwd)"/website:/srv/jekyll \
       -v "$(pwd)"/.docker-cache:/usr/local/bundle \
       -p 8080:4000 \
       -e JEKYLL_ROOTLESS=1 \
       jekyll/jekyll:4.2.0 \
       jekyll serve
