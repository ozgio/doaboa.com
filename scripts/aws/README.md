AWS Scripts
===========

AWS scripts for deployment and management.
Source: https://lustforge.com/2016/02/27/hosting-hugo-on-aws/

### S3 config
Routing rules for S3

    aws s3api put-bucket-website --region eu-central-1 --bucket doaboa.com --website-configuration file://s3config.json
