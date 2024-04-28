.PHONY: build
build:
	docker build --platform linux/amd64 -t adoyle/openwrt-build-env .

.PHONY: push
push:
	docker push adoyle/openwrt-build-env
