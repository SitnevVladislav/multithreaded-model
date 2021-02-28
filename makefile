ll: clean mkdir_build build exec

.PHONY: mkdir_build
mkdir_build:
	[ -d ./build ] | mkdir -p build

.PHONY: build
build:
	gcc ./src/app_v2_0.c -o ./build/app_v2_0 -pthread -lX11

.PHONY: exec
exec:
	./build/app_v2_0

.PHONY: clean
clean:
	rm -rf build