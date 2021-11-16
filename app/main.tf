terraform {
    required_providers {
      azurerm = {
        # The "hashicorp" namespace is the new home for the HashiCorp-maintained
        # provider plugins.
        #
        # source is not required for the hashicorp/* namespace as a measure of
        # backward compatibility for commonly-used providers, but recommended for
        # explicitness.
        source  = "hashicorp/azurerm"
        version = "~> 1.39.0"
      }
    }
    backend "azurerm" {
    }
}

module "rg" {
    source = "./rg"
    location = var.location
    resource_group_name = var.resource_group_name
}

variable location {
    description = "Location of the Virtual Net"
}

variable resource_group_name {
    description = "Resource Group Name for the virtual net"
}