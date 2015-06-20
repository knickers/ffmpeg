#!/bin/bash
set -e

if [[ ${#@} -lt 1 ]]; then
	echo 'Usage:'
	echo '    ./run.sh -i <input file> -ss <start at hh:mm:ss> -t <duration> out%04d.gif'
	exit 1
fi

docker run --rm \
	-u $(id -u):$(id -g) \
	-v "$PWD:$PWD" \
	-w "$PWD" \
	knickers/ffmpeg ffmpeg "$@"
