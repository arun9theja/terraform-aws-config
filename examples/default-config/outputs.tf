output "config_id" {
  description = "Name of the recorder"
  value       = "${module.this.config_id}"
}

output "config_delivery_channel_id" {
  description = "The name of the delivery channel."
  value       = "${module.this.config_delivery_channel_id}"
}
