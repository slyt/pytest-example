# Define variables for common commands
POETRY_RUN = poetry run

# Install dependencies
install:
	pip install -r requirements.txt

# Run tests with pytest
test:
	python -m pytest -vv --cov=hello --cov=greeting tests
	python -m pytest --nbval notebook.ipynb

# Format code with black
format:
	black *.py

# Lint code with pylint
lint:
	pylint --disable=R,C hello.py

# Run all commands: install, test, form, and lint
all: install lint test format
