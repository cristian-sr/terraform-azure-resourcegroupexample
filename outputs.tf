output "resource_group_name.*" {
  value = "${azurerm_resource_group.rg.*.name}"
}

output "environments" {
  value = "${var.environments}"
}

output "location" {
  value = "${var.location}"
}