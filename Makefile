.PHONY: check lint mypy format test build version release

lint:
	poetry run flake8 src tests --extend-ignore D

install:
	poetry install

formatter:
	poetry run black src tests

build_hello_world:
	poetry run python3 -m grpc_tools.protoc -I./protos --python_out=./src/examples/helloworld/ --grpc_python_out=./src/examples/helloworld/ ./protos/helloworld.proto
