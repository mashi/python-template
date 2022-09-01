# Note that, to always execute a recipe, it is recommended [1] to use the FORCE prerequisite
# [1] https://www.gnu.org/software/make/manual/html_node/Force-Targets.html

SHELL := /bin/bash

# install all the required packages and configure the git hooks
install:
	@(\
		python3 -m venv .venv; \
		source .venv/bin/activate; \
		pip install wheel; \
		pip install -r requirements.txt; \
		pip install -r docs/requirements-doc.txt; \
		pre-commit install; \
	)

# execute tests
tests: FORCE
	@(\
		source .venv/bin/activate; \
		python -m unittest discover -b; \
	)


docs: FORCE
	@(\
		source .venv/bin/activate; \
		sphinx-build -b html docs/source docs/_build/; \
	)

FORCE:
