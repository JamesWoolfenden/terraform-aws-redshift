common_tags = {
  createby = "Terraform",
module = "teraform-aws-redshift" }
jdbc_cidr       = ["0.0.0.0/0"]
jdbc_port       = 5439
vpc_id          = "vpc-0c33dc8cd64f408c4"
public_subnets  = [""]
admin_password  = "L$ngDumb1"
num_nodes       = 2
admin_username  = "dumberer"
database_name   = "myredshift"
identifier      = "jgw"
node_type       = "dc1.large"
port            = 5439
s3_logging_path = "redshift/"
