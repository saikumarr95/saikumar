azure_openai_services = [
  {
    azure_openai_service_name = "openai-sn-aiops-uat-001"
    location = "eastus"
    resource_group_name = "rg-eus-sample-001"
    azure_openai_kind = "OpenAI"
    sku_name = "S0"
    azure_openai_deployment_name = "openai-dp-aiops-uat-001"
  },
]

search_services = [
  {
    search_service_name = "swa-aiops-uat-001-eastus"
    resource_group_name = "rg-eus-sample-001"
    location = "eastus"
    sku = "standard"
  },
]

storage_accounts = [
  {
    storage_account_name = "staaiopsuat001test"
    location = "eastus"
    environment = "dev"
    resource_group_name = "rg-eus-sample-001"
  },
]

static_sites = [
  {
    name = "site1"
    resource_group_name = "rg-eus-sample-001"
    location = "East US 2"
    repository_url = "https://CTO-Global@dev.azure.com/CTO-Global/CTO%20Engineering/_git/ESLZ.AIOPS-UI"
    branch = "uat"
  },
  // more static sites...
]

webapps = [
  {
    aiops_serviceplan_name = "sp-wp-aiops-uat-eastus-001"
    aiops_webapp_name = "wa-aiops-uat-eastus-001"
    resource_group_name = "rg-eus-sample-001"
    location = "eastus"
    os_type = "Linux"
    app_settings = {
      "PYTHON_VERSION" = "3.10"
      // add more app settings here...
    },
  }
  // more web apps...
]
function_app = [
  {
    name = "fwa-aiops-uat-001-eastus"
    resource_group_name = "rg-eus-sample-001"
    location = "eastus"
    storage_account_name = "staaiopsuat001test"
    app_service_plan_name = "spa-fwa-aiops-uat-001-eastus"
    runtime_version = "3.9"
    storage_account_access_key = "key1" 
  },
  // more function apps...
]


subnet_id = "your-subnet-id" // replace with your actual subnet id

