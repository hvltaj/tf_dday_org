locals {
  name = "dev"
}

inputs = {
      name      = local.name
      email     = "philusky+aws-${local.name}@gmail.com"
      role_name = "adminAssumeRole"
}

include {
  path = find_in_parent_folders()
}