provider "aws" {
  alias  = "selected"
  region = "${var.region}"
}

resource "aws_config_configuration_recorder" "this" {
  provider = "aws.selected"

  name     = "${var.config_name}"
  role_arn = "${var.config_role_arn}"

  recording_group = {
    all_supported                 = "${var.config_records_all_supported_resources}"
    include_global_resource_types = "${var.config_records_global_resources}"
  }
}

resource "aws_config_delivery_channel" "this" {
  provider = "aws.selected"

  name           = "${var.config_delivery_channel_name}"
  s3_bucket_name = "${var.config_bucket_name}"

  snapshot_delivery_properties = {
    delivery_frequency = "${var.config_delivery_frequency}"
  }

  depends_on = ["aws_config_configuration_recorder.this"]
}

resource "aws_config_configuration_recorder_status" "this" {
  provider = "aws.selected"

  name       = "${aws_config_configuration_recorder.this.name}"
  is_enabled = "${var.is_config_enabled}"

  depends_on = ["aws_config_delivery_channel.this"]
}
