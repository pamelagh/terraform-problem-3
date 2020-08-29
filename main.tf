provider "aws" {
    profile = var.profile
    region  = var.region
}

module "elastic_beanstalk" {
    source  = "./modules/elastic_beanstalk"
    
    bucket_name = var.bucket_name
    code_to_upload = var.code_to_upload
    env_name = var.env_name
    platform_version = var.platform_version
    service_description = var.service_description
    service_name = var.service_name
    service_version = var.service_version
}
