provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.20.0"
}
# Creates one resource group per environment defined in the vars
resource "azurerm_resource_group" "rg" {
  count = "${length(var.environments)}"
  name     = "${element(var.environments, count.index)}-rg"
  location = "${var.location}"
  tags     = "${var.tags}"
}
