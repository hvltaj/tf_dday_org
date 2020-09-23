terraform {
  source = "/home/hultaj/dday/tf_dday_org/modules/accounts"
}

locals {
  name = "dev"
}

inputs = {
      name      = local.name
      email     = "philusky+aws-${local.name}@gmail.com"
      role_name = "adminAssumeRole"
}

//include {
//  path = find_in_parent_folders()
//}

remote_state {
  backend = "local"

  config = {
    path = "/home/hultaj/dday/tf_dday_org/states/accounts/${local.name}/terraform.tfstate"
  }
}