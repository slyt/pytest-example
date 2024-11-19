# Define variables for common commands
POETRY_RUN = poetry run

# Install dependencies
install:
	pip install -r requirements.txt

# Run tests with pytest
test:
	$(POETRY_RUN) pytest -vv test_hello.py

# Format code with black
format:
	$(POETRY_RUN) black *.py

# Lint code with pylint
lint:
	$(POETRY_RUN) pylint --disable=R,C hello.py

# Run all commands: install, test, form, and lint
all: install lint test format
