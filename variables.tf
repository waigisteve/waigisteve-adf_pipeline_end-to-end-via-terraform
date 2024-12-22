variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region for resources"
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
}

variable "key_vault_name" {
  description = "Name of the Key Vault"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
}

variable "sql_server_name" {
  description = "Name of the SQL Server"
}

variable "sql_admin_username" {
  description = "SQL Admin username"
}

variable "sql_admin_password" {
  description = "SQL Admin password"
}

variable "data_factory_name" {
  description = "Name of the Data Factory"
}

variable "databricks_workspace_name" {
  description = "Databricks Workspace name"
}

# New variables for Azure authentication
variable "client_id" {
  description = "The client ID for the Azure service principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the Azure service principal"
  type        = string
}

variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
}
