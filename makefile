# Note that, to always execute a recipe, it is recommended [1] to use the FORCE prerequisite
# [1] https://www.gnu.org/software/make/manual/html_node/Force-Targets.html

SHELL := /bin/bash

# install all the required packages and configure the git hooks
install:
	@(\
		uv venv; \
		source .venv/bin/activate; \
		uv sync --all-groups; \
		pre-commit install; \
	)

# execute tests
tests: FORCE
	uv run -m unittest -b

# build documentation
docs: FORCE
	uv run --group docs sphinx-build -b html docs/source docs/_build/

FORCE:
