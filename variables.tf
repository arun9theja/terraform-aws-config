variable "config_name" {
  description = "The name of the recorder. Defaults to default. Changing it recreates the resource."
  type        = "string"
  default     = "default"
}

variable "config_role_arn" {
  description = "Amazon Resource Name (ARN) of the IAM role. used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account."
  type        = "string"
}

variable "config_records_all_supported_resources" {
  description = "Specifies whether AWS Config records configuration changes for every supported type of regional resource (which includes any new type that will become supported in the future). Defaults to true."
  type        = "string"
  default     = "true"
}

variable "config_records_global_resources" {
  description = "Specifies whether AWS Config includes all supported types of global resources with the resources that it records. Requires all_supported = true. Defaults to true."
  type        = "string"
  default     = "true"
}

variable "config_delivery_channel_name" {
  description = "The name of the delivery channel. Defaults to default. Changing it recreates the resource."
  type        = "string"
  default     = "default"
}

variable "config_delivery_frequency" {
  description = "The frequency with which AWS Config recurringly delivers configuration snapshots. e.g. One_Hour or Three_Hours. Defaults to One_Hour."
  type        = "string"
  default     = "One_Hour"
}

variable "config_bucket_name" {
  type = "string"
}

variable "is_config_enabled" {
  type = "string"
}
