install:
	@poetry install

test:
	@poetry run pytest -v -x -p no:warnings --cov-report term-missing --cov=./marshmallow_pynamodb

ci:
	@poetry run pytest --cov=./marshmallow_pynamodb --black --mypy --pydocstyle

format:
	@poetry run black .

dynamodb:
	docker run -p 8000:8000 amazon/dynamodb-local