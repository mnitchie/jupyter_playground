.DEFAULT_GOAL := help

.PHONY: start \
        _notImplemented \

# Start vanilla docker container
start:
	docker run -it --rm -p 8888:8888 -v $(shell pwd):/usr/src/app --name python_sandbox_jupyter python_sandbox_jupyter

# Placeholder for not implemented targets
_notImplemented:
	@echo "This target is not yet implemented"
