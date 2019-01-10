variable "environments" {
  description = "Default prefix to use with your resource names."
  default     = ["dev", "qa", "prod"]
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
    default   = "Central US"
}
variable "tags" {
  type = "map"

  default = {
    Owner = "Stenio Ferreira"
    TTL = "48"
  }
}