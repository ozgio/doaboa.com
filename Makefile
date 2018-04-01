.PHONY: deploy, help

deploy:
	aws s3 sync --acl "public-read" --sse "AES256" --region eu-central-1 src/ s3://doaboa.com

dsstore:
	find . -name '.DS_Store' -type f -delete

help:
	@echo "deploy: Deploy to AWS"
	@echo "dsstore: Remove all DS_Store files"
