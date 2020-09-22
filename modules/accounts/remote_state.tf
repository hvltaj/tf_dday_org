data "terraform_remote_state" "org" {
  backend = "local"

  config = {
    # change absolute path
    path = "/home/hultaj/dday/tf_dday_org/terragrunt/organization/terraform.tfstate"
  }
}