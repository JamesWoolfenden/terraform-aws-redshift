locals {
  master_password = (
    var.admin_password == null
    ? "${lower(substr(random_id.random_pass.hex, 0, 4))}${upper(substr(random_id.random_pass.hex, 4, 4))}"
    : var.admin_password
  )
  cluster_identifier = coalesce(var.identifier, "${lower(replace(var.name_prefix, "--", "-"))}redshift")
  jdbc_name          = "${var.name_prefix}redshift-jdbc-cidr-whitelist"
  redshift_subnets   = "${lower(var.name_prefix)}redshift-subnet-group"
}
