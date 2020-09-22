module "bucket" {
  source = "/home/hultaj/dday/tf_dday_org/modules/bucket"

  bucket_name = var.name
}