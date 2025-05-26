terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "4.30.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "cb43a5e2-9659-432d-a1dd-96d79f2cb1ae"
    features {
      
    }
}

resource "azurerm_resource_group" "rg" {

    name = "rg-stly-eus2"
    location = "East US"
  
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet-stly-eus"
    location = "azurerm_resource_group.rg "
    resource_group_name = azurerm_resource_group.rg
    address_space = ["10.0.0.0/24"]
  
}

resource "azurerm_subnet" "sbnet" {
    name = "snet-stly-eus2"
    resource_group_name = azurerm_resource_group.rg
    virtual_network_name = azurerm_virtual_network.vnet
    address_prefixes = [ "10.0.1.0/16" ]
}

