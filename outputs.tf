output "redshift" {
    value=aws_redshift_cluster.redshift
    sensitive = true
}