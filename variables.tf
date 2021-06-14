variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "name_prefix" {

}

variable "num_nodes" {}
variable "database_name" {}
variable "elastic_ip" {
  default = ""
  type    = string
}
variable "kms_key_id" {}
variable "admin_username" {}
variable "node_type" {}
variable "port" {}
variable "skip_final_snapshot" {}
variable "s3_logging_bucket" {}
variable "s3_logging_path" {}

variable "jdbc_cidr" {
  type = list(any)
}

variable "vpc_id" {

}

variable "admin_password" {
  sensitive = true
}

variable "public_subnets" {}

variable "jdbc_port" {

}

variable "identifier" {

}

variable "param_group_name" {
  type    = string
  default = "parameter-group-test-terraform"
}
