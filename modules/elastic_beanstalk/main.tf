data "archive_file" "zip" {
  type        = "zip"
  output_path = var.code_to_upload
  source_dir  = "upload"
}

resource "aws_s3_bucket" "default" {
    bucket = var.bucket_name
}

resource "aws_s3_bucket_object" "default" {
    bucket = aws_s3_bucket.default.id
    key    = var.code_to_upload
    source = data.archive_file.zip.output_path
    etag = filemd5(data.archive_file.zip.output_path)
}

resource "aws_elastic_beanstalk_application" "problem3-nodejs" {
    name = var.service_name
    description = var.service_description
}

resource "aws_elastic_beanstalk_environment" "problem3-nodejs-env" {
    name = var.env_name
    application = aws_elastic_beanstalk_application.problem3-nodejs.name
    solution_stack_name = var.platform_version

    setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
    }
}

resource "aws_elastic_beanstalk_application_version" "default" {
    name        = var.service_version
    application = aws_elastic_beanstalk_application.problem3-nodejs.name
    description = var.service_description
    bucket      = var.bucket_name
    key         = aws_s3_bucket_object.default.id
}
