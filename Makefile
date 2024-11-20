# Define variables for common commands
POETRY_RUN = poetry run

# Install dependencies
install:
	pip install -r requirements.txt

# Run tests with pytest
test:
	python -m pytest -vv --cov=hello --cov=greeting tests
	python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb --cov=hello --cov=greeting tests # Debugger is invoked when test fails

one-test:
	python -m pytest tests/test_greeting.py::test_my_name_3

# Format code with black
format:
	black *.py

# Lint code with pylint
lint:
	pylint --disable=R,C hello.py

# Run all commands: install, test, form, and lint
all: install lint test format
