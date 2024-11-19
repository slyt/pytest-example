[![Python application test with Github Actions](https://github.com/slyt/pytest-example/actions/workflows/testing-ci.yml/badge.svg)](https://github.com/slyt/pytest-example/actions/workflows/testing-ci.yml)

# pytest-examples
Examples of using pytest for learning purposes by following [Pytest: Environmnets Setup and Advanced Testing](https://www.coursera.org/videos/spark-hadoop-snowflake-data-engineering/UUI0G?authProvider=target&query=pytest&source=search)


## Setup

```sh
pyenv local 3.12.4
make all
```

## Notes
- Makefile does install, test (pytest), format (black), lint (pylint)
- Github actions automatically runs everything from the Makefile on push. See `.github/workflows/testing-ci.yml`.
- `32:32` Ran into issues using old versions of actions/checkout and actions/setup-python that depend on old versions of Node.js. Had to update to the latest version to build properly. Actions are github repos, you can see the versions on the Release section, e.g. [actions/setup-python](https://github.com/actions/setup-python)

Error:
```
build
Process completed with exit code 2.
build
The following actions uses node12 which is deprecated and will be forced to run on node16: actions/checkout@v2, actions/setup-python@v1. For more info: https://github.blog/changelog/2023-06-13-github-actions-all-actions-will-run-on-node16-instead-of-node12-by-default/

```

- Switching to using `requirements.txt` instead of `pyproject.toml` and poetry so that Github Actiosn work. Will circle back around and learn how poetry works with github actions.
- `34:03` Add flag to pytest command in makefile so that coverage get's analyzed (see [pytest-cov usage](https://pypi.org/project/pytest-cov/#usage))
- `39:20` Running matrix test with different python as described in [Github Actions docs](https://docs.github.com/en/actions/use-cases-and-examples/building-and-testing/building-and-testing-python#using-multiple-python-versions)
- `43:26` Moved `test_hollo.py` to the `tests` directory, but then `make test` failed because I was calling pytest directly, need to call pytest with `python -m pytest tests` so that hello.py is added to the Python path. Alternatively, we could create `pytest.ini` or `pyproject.toml` and define `pythonpath = .` appropriately.