TAG="yonderdynamics/rover-video-feed"

DEVICE="/dev/video0"

RUN_CMD=docker run -p 8090:8090 --device $(DEVICE):$(DEVICE) -it $(TAG)

.PHONY: build run run-debug

build:
	docker build -t $(TAG) .

run:
	$(RUN_CMD) /stream/server.sh

run-debug:
	$(RUN_CMD) bash

