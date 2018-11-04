.PHONY: build deploy build_package clean

TAG?=$(shell git rev-list HEAD --max-count=1 --abbrev-commit)
export TAG

build_package:
	mkdir dist
	cp -rf ffbot.py dist
	cp -rf ~/ffbot/venv/lib/python3.6/site-packages/* dist
	cp -rf ~/ffbot/venv/lib64/python3.6/site-packages/* dist
	cd dist/ && zip -r9 PythonPackage.zip .

build: build_package
	aws s3 cp ~/ffbot/dist/PythonPackage.zip s3://lambda-function-package-bucket/v1.0.0/PythonPackage.zip
	rm -f -r dist
clean:
	rm -f *.zip