output "config_id" {
  description = "Name of the recorder"
  value       = "${aws_config_configuration_recorder.this.id}"
}

output "config_delivery_channel_id" {
  description = "The name of the delivery channel."
  value       = "${aws_config_delivery_channel.this.id}"
}
