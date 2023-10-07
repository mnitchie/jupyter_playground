.DEFAULT_GOAL := help

.PHONY: build \
		start \
        _notImplemented \

build:
	docker build -t jupyter_playground .

# Start vanilla docker container
start: build
	docker run -it --rm -p 8888:8888 -v $(shell pwd):/usr/src/app --name jupyter_playground jupyter_playground

# Placeholder for not implemented targets
_notImplemented:
	@echo "This target is not yet implemented"
