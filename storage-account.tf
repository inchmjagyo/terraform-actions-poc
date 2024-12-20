resource "azurerm_storage_account" "demo" {
  name                     = "demopurposesapp"
  resource_group_name      = data.azurerm_resource_group.demo.name
  location                 = data.azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "demo" {
  name                  = "for-${var.namespace}-purposes-${var.environment}" 
  storage_account_name  = azurerm_storage_account.demo.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "test" {
  name                  = "for-${var.namespace}-demo-${var.environment}" 
  storage_account_name  = azurerm_storage_account.demo.name
  container_access_type = "private"
}

