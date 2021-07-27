.PHONY: check lint mypy format test build version release

lint:
	poetry run flake8 src tests --extend-ignore D

install:
	poetry install

formatter:
	poetry run black src tests
