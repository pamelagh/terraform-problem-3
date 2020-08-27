variable bucket_name {
    type = string
    description = "Name for bucket containing .zip"
}

variable code_to_upload {
    type = string
    description = "Name for compressed app"
}

variable env_name {
    type = string
    description = "Environment name for Node.js app"
}

variable platform_version {
    type = string
    description = "Node.js platform version"
}

variable profile {
    type        = string
    default     = "default"
    description = "AWS profile name"
}

variable region {
    type        = string
    description = "AWS region"
}

variable service_description {
    type = string
    default = "Node.js app"
}

variable service_name {
    type = string
    description = "Service name for Node.js app"
}

variable service_version {
    type = string
    description = "Version for Node.js app"
}
