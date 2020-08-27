output "app_version" {
  value = aws_elastic_beanstalk_application_version.default.name
}
output "env_name" {
  value = aws_elastic_beanstalk_environment.problem3-nodejs-env.name
}
