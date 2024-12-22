# Provider configuration
provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  features {}
}

# Resource Group (Referencing the existing resource group)
resource "azurerm_resource_group" "new" {
  name     = var.resource_group_name   # Variable from the .tfvars file
  location = var.location               # Variable from the .tfvars file
}

# Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name   # Using the variable from the .tfvars file
  resource_group_name       = azurerm_resource_group.new.name
  location                 = azurerm_resource_group.new.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

# Data Factory
resource "azurerm_data_factory" "example" {
  name                = var.data_factory_name    # Using the variable from the .tfvars file
  resource_group_name = azurerm_resource_group.new.name
  location            = azurerm_resource_group.new.location
}

# Databricks Workspace
resource "azurerm_databricks_workspace" "example" {
  name                = var.databricks_workspace_name   # Using the variable from the .tfvars file
  resource_group_name = azurerm_resource_group.new.name
  location            = azurerm_resource_group.new.location
  sku                 = "standard"
}

# MSSQL Server (Updated for Managed SQL Server resource type with version)
resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server_name    # SQL Server name from the .tfvars file
  resource_group_name          = azurerm_resource_group.new.name
  location                     = azurerm_resource_group.new.location
  administrator_login          = var.sql_admin_username  # SQL Admin Username from the .tfvars file
  administrator_login_password = var.sql_admin_password  # SQL Admin Password from the .tfvars file
  version                      = "12.0"  # SQL Server version (adjust if necessary)
}
