.PHONY: test deps lint

deps:
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test
test:
	python -m pytest test
run:
	python hello_world/app.py