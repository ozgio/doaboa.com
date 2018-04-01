Installation
============

Required accounts
- AWS
- Cloudflare

AWS S3 Config
-------------
- create bucket with the full domain of the site: doaboa.com
- make this bucket host static sites with the config on aws/s3config.json

    aws s3api put-bucket-website --region eu-central-1 --bucket doaboa.com --website-configuration file://aws/s3config.json
    #now you can access web site from http://doaboa.com.s3-website.eu-central-1.amazonaws.com/

- create another bucket: www.doaboa.com, and from properties/static web site hosting, forward all traffic to doaboa.com

Cloudflare config
-----------------
- Click Add Site
- Change name servers on hover based on cooudflare feedback
- After site activated in Cloudflare, On DNS tab
  - Delete A records
  - add www cname: www, www.doaboa.com.s3-website.eu-central-1.amazonaws.com
  - add @ cname: @, doaboa.com.s3-website.eu-central-1.amazonaws.com
- on "page rules" tab
  - Add rule: url: http://*doaboa.com/*, rule: always use https


Resources:
- https://support.cloudflare.com/hc/en-us/articles/200168926-How-do-I-use-CloudFlare-with-Amazon-s-S3-Service-)
- https://wsvincent.com/static-site-hosting-with-s3-and-cloudflare/
- https://lustforge.com/2016/02/27/hosting-hugo-on-aws/
- https://agop.me/post/https-enabled-portfolio-hugo-s3-cloudfront.html
- https://pantheon.io/docs/guides/cloudflare-enable-https/
