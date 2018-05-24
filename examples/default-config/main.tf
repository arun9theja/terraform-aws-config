provider "aws" {
  region  = "ap-southeast-1"
  version = "1.20.0"
}

module "this" {
  source = "../../"

  config_name                            = "default_config"
  config_role_arn                        = "arn:aws:iam::123456789012:role/config-role"
  config_records_all_supported_resources = "true"
  config_records_global_resources        = "true"
  config_delivery_channel_name           = "default_channel"
  config_delivery_frequency              = "One_Hour"
  config_bucket_name                     = "config-bucket"

  is_config_enabled = "true"
}
