output "redshift" {
  value     = module.redshift.redshift
  sensitive = true
}