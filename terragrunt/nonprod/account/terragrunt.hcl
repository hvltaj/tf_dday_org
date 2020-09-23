terraform {
  source = "/home/hultaj/dday/tf_dday_org/modules/accounts"
}

inputs = {
      name      = local.name
      email     = "philusky+aws-${local.name}@gmail.com"
      role_name = "adminAssumeRole"
}

locals {
  name = lookup(yamldecode(file("${find_in_parent_folders("common_vars.yaml")}")), "name")
}

remote_state {
  backend = "local"

  config = {
    path = "/home/hultaj/dday/tf_dday_org/states/accounts/${local.name}/terraform.tfstate"
  }
}