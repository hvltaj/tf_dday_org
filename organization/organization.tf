module "org" {
  source = "../modules/organization"
}

output "roots" {
 description = "After the Terraform docs: 'List of organization roots. (...)'"
 value       = module.org.roots
}