.PHONY: install clean test

# Specify the default target.
all: install

# Install dependencies
install:
	poetry install

# Run tests using pytest within Poetry
test:
	poetry run pytest

# Clean up files, including the virtual environment managed by Poetry
clean:
	poetry env remove python
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete
	find . -type d -name '*.egg-info' -delete
	rm -rf build/ dist/
