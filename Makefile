#!/usr/bin/env make -f

CONTAINER_NAME = "champop-jupyter"

current_dir := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

build:
	docker build -t champop-jupyter .

run:
	docker run -it -v $(current_dir):/app -p 7777:8888 champop-jupyter

notebook: run
