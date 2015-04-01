#!/bin/bash
set -e

if [[ ${#@} -lt 1 ]]; then
	echo 'Usage:'
	echo '    e.g. run.sh -t <duration> -ss <start at hh:mm:ss> -i <inpit file> out%04d.gif'
	exit 1
fi

docker run --rm \
	-u $(id -u):$(id -g) \
	-v "$PWD:$PWD" \
	-w "$PWD" \
	knickers/ffmpeg ffmpeg "$@"
