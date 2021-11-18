#!/bin/sh

docker run -it --rm \
	-v "$(pwd)"/website/_site:/var/lib/leonardo/www \
	-p 8080:8080 \
	jolielang/leonardo
