locals {
  name = "dev"
}

inputs = {
      bucket_name = local.name
}

include {
  path = find_in_parent_folders()
}

remote_state {
  backend = "local"

  config = {
    path = "/home/hultaj/dday/tf_dday_org/states/buckets/${local.name}/terraform.tfstate"
  }
}

dependency "account" {
  config_path = "/home/hultaj/dday/tf_dday_org/terragrunt/accounts/${local.name}"
}

iam_role = "arn:aws:iam::${dependency.account.outputs.id}:role/adminAssumeRole"