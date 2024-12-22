# Output variables

output "resource_group_name" {
  value = azurerm_resource_group.new.name
  description = "The name of the new Resource Group"
}

output "resource_group_location" {
  value = azurerm_resource_group.new.location
  description = "The location of the new Resource Group"
}

output "storage_account_name" {
  value = azurerm_storage_account.example.name
  description = "The name of the Storage Account"
}

output "data_factory_name" {
  value = azurerm_data_factory.example.name
  description = "The name of the Data Factory"
}

output "databricks_workspace_name" {
  value = azurerm_databricks_workspace.example.name
  description = "The name of the Databricks Workspace"
}
