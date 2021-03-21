setup:
	poetry install
	poetry run pre-commit install

test:
	poetry run pytest --cov=spacy_readability -q --disable-pytest-warnings tests/

ci-test:
	poetry run pytest tests/ --cov=spacy_readability --junitxml=junit/test-results.xml
	poetry run codecov

lint:
	poetry run pylint euplexcy_readability

mypy:
	poetry run mypy euplexcy_readability

format:
	poetry run black euplexcy_readability tests