# Python Project Template

[![github-actions](https://github.com/mashi/python-template/actions/workflows/ci.yml/badge.svg)](https://github.com/mashi/python-template/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A modern and feature-rich template for starting your next Python project.

## Why Use This Template?

This template provides a solid foundation for any Python project, with a focus on code quality, automation, and best practices. It's designed to get you up and running quickly, so you can focus on writing code, not setting up infrastructure.

## Features

This template comes with a number of features out of the box:

*   **Code Linting and Formatting** with [Ruff](https://github.com/astral-sh/ruff) for lightning-fast Python linting and formatting.
*   **Pre-commit Hooks** with a curated set of hooks to ensure code quality before it even gets committed:
    *   [docformatter](https://github.com/PyCQA/docformatter) for formatting docstrings.
    *   [bandit](https://github.com/PyCQA/bandit) for finding common security issues.
    *   Many other checks for file integrity and syntax.
*   **Testing** with the built-in `unittest` framework.
*   **Documentation** with [Sphinx](https://www.sphinx-doc.org/en/master/), ready to be deployed.
*   **CI/CD** with GitHub Actions, which automatically runs tests, checks formatting, and validates the build.
*   **Simplified Development** with a `makefile` for common tasks like installing dependencies, running tests, and generating documentation.

## Getting Started

To use this template, simply click the "Use this template" button on the GitHub repository page.

Once you have your new repository, clone it to your local machine:

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
```

Then, install the development dependencies:

```bash
make install
```

This will create a virtual environment, install all the necessary packages, and set up the pre-commit hooks.

## Usage

This template provides a `makefile` with several commands to streamline your development workflow:

*   `make install`: Install all dependencies and set up the development environment.
*   `make tests`: Run the test suite.
*   `make docs`: Generate the project documentation.

## Contributing

Contributions are welcome! Please feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.