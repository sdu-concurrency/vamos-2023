#!/bin/sh

docker run -it --rm -v "$(pwd)"/website:/srv/jekyll	-v "$(pwd)"/.docker-cache:/usr/local/bundle -p 8080:4000 jekyll/jekyll jekyll serve
