# waigisteve-adf_pipeline_end-to-end-via-terraform

Azure Data Factory Pipeline Deployment via Terraform
This project automates the deployment of an end-to-end Azure Data Factory (ADF) pipeline environment using Terraform. The setup includes essential Azure resources such as resource groups, storage accounts, key vaults, SQL servers, and more.

Tech Stack
The project leverages the following technologies:

Terraform: For Infrastructure as Code (IaC) to define and manage Azure resources.
Azure Data Factory: For orchestrating and automating data movement and transformation pipelines.
Azure SQL Database: As the relational database for data storage and querying.
Azure Key Vault: For secure storage of secrets, keys, and certificates.
Azure Storage Account: For blob storage and other Azure storage services.
Azure Databricks: For big data processing and analytics.
GitHub: For version control and collaboration.
Azure CLI: For managing Azure resources and running Terraform commands.
Prerequisites
Ensure you have the following before proceeding:

Azure Account: An active Azure subscription.
Terraform: Installed and configured for Azure. Install Terraform.
Azure CLI: Installed and authenticated. Install Azure CLI.
Git: Installed for version control. Install Git.
Project Structure
The project consists of the following main files:

main.tf: Defines the Azure resources to be provisioned.
variables.tf: Declares input variables for customization.
outputs.tf: Specifies the outputs generated after deployment.
Resources Created
This Terraform configuration deploys the following Azure resources:

Resource Group
Storage Account
Key Vault
Azure SQL Server
Azure Data Factory
Azure Databricks Workspace
Configuration
Update the variables.tf file with your specific configuration values:

hcl
Copy code
variable "resource_group_name" {
  default = "your-resource-group"
}

variable "location" {
  default = "South Africa North"
}

variable "storage_account_name" {
  default = "your-storage-account"
}

variable "key_vault_name" {
  default = "your-key-vault"
}

variable "tenant_id" {
  default = "your-tenant-id"
}

variable "sql_server_name" {
  default = "your-sql-server"
}

variable "sql_admin_username" {
  default = "your-sql-admin-username"
}

variable "sql_admin_password" {
  default = "your-sql-admin-password"
}

variable "data_factory_name" {
  default = "your-data-factory"
}

variable "databricks_workspace_name" {
  default = "your-databricks-workspace"
}
Usage
Clone the Repository:

bash
Copy code
git clone https://github.com/waigisteve/adf_pipeline_end-to-end-via-terraform1.git
cd adf_pipeline_end-to-end-via-terraform1
Initialize Terraform:

bash
Copy code
terraform init
Validate Configuration:

bash
Copy code
terraform validate
Plan Deployment:

bash
Copy code
terraform plan -var-file="variables.tf"
Apply Deployment:

bash
Copy code
terraform apply -var-file="variables.tf"
Destroy Resources: If you need to remove the deployed resources, run:

bash
Copy code
terraform destroy -var-file="variables.tf"
Outputs
After successful deployment, the following outputs will be displayed:

Resource Group Name
Storage Account Name
Key Vault Name
SQL Server Name
Data Factory Name
Databricks Workspace Name
Contributing
Contributions are welcome! Please fork the repository and create a pull request for any proposed changes.

License
This project is licensed under the MIT License. See the LICENSE file for details.
