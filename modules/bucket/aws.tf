provider "aws" {
 version = "~> 2.30"
 region  = "eu-west-1"

  assume_role {
    role_arn     = "arn:aws:iam::${local.acct_id}:role/adminAssumeRole"
    session_name = "pz-${local.acct_id}"
  }
}


locals {
  acct_id = data.terraform_remote_state.account.outputs.id
}

