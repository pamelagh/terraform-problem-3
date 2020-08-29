output "app_version" {
  value = aws_elastic_beanstalk_application_version.default.name
}

output "aws_command" {
  value = "aws elasticbeanstalk update-environment --application-name ${aws_elastic_beanstalk_application.problem3-nodejs.name} --version-label ${aws_elastic_beanstalk_application_version.default.name} --environment-name ${aws_elastic_beanstalk_environment.problem3-nodejs-env.name}"
}

output "env_name" {
  value = aws_elastic_beanstalk_environment.problem3-nodejs-env.name
}
