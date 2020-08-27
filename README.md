Create simple Node.js web API with an HTTP GET endpoint that returns the time from the server.

Implement Terraform script to automate the creation of the AWS Elastic Beanstalk, and the deployment of the web API.
Use t2.nano as an instance type for the app.

Run: node server.js

Steps followed:
- Created app.
- Published the compressed app (.zip) to AWS S3 bucket.
- Created S3 bucket and S3 bucket object.
- Created Elastic beanstalk application, environment and version.
- Run `terraform apply` to create resources.
- Deploy with the following command:
aws --region $REGION elasticbeanstalk update-environment --environment-name $(terraform output env_name) --version-label $(terraform output app_version)
