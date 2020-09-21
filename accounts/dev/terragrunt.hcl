locals {
  name = "dev"
}

terraform {
  source = "../../modules/accounts"
}

inputs = {
      name      = local.name
      email     = "philusky+aws-${local.name}@gmail.com"
      role_name = "adminAssumeRole"
}

