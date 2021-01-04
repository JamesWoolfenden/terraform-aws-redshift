variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "name_prefix" {
  
}

variable "num_nodes"{}
  variable "database_name" {}
  variable "elastic_ip"                {}
  variable "kms_key_id"                {}
  variable "admin_username" {}
  variable "node_type" {}
 variable "port" {}
 variable "skip_final_snapshot"{}
variable "s3_logging_bucket" {}
variable "s3_logging_path" {}

variable "jdbc_cidr" {
  type = list
}

variable "vpc_id" {
  
}

variable "admin_password" {
  sensitive=true
}

variable "public_subnets" {}
variable "jdbc_port" {
  
}

variable "identifier" {
  
}