variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "name_prefix" {
  type    = string
  default = "jgw"
}

variable "jdbc_cidr" {
  type = list
}

variable "vpc_id" {

}
variable "public_subnets" {}

variable "identifier" {}

 variable "port" {}
 
variable "admin_password" {
  sensitive=true
}

variable "kms_key_id" {}
variable "admin_username" {}
variable "database_name" {}
variable "elastic_ip" {}
variable "jdbc_port" {}
 variable "s3_logging_path" {}
 variable "s3_logging_bucket" {}
 variable "num_nodes" {}
 variable "node_type" {}
