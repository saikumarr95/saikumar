data "azurerm_subnet" "virtualSubnets1" {
  name                 = "snet-eus-sample-001"
  virtual_network_name = "vnet-eus-sample-001"
  resource_group_name  = "rg-eus-sample-001"
  #count                = length(data.azurerm_virtual_network.virtualNetwork1.subnets)
}
