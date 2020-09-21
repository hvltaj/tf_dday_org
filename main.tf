locals {
 role_name = "adminAssumeRole"
}
module "account-dev" {
 source    = "modules/accounts"
 name      = "account-dev"
 email     = "YOUR_EMAIL+account-dev@YOUR_DOMAIN.TLD"
 parent_id = module.ou-1.id
 role_name = "adminAssumeRole"
}