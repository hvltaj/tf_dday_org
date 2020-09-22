data "terraform_remote_state" "account" {
  backend = "local"

  config = {
    # change absolute path
    path = "/home/hultaj/dday/tf_dday_org/states/accounts/${var.bucket_name}/terraform.tfstate"
  }
}