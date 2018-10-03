#!/bin/bash
DEVICE="/dev/video0"

PORT="8090"

vlc -I dummy --no-osd --no-spu v4l:// :v4l-vdev="${DEVICE}" --sout "#transcode{vcodec=VP80,vb=2000,scale=Auto,a    codec=none}:http{mux=webm,dst=:${PORT}/}"
