terraform {
  source =
    "../../modules/accounts"
}
inputs = {
  instance_count = 10
  instance_type  = "m4.large"
}