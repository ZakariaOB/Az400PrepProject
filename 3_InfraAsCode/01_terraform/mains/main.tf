terraform {
  required_providers {
    azurerm={
        source="hashicorp/azurerm"
        version="3.17.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "fbecb028-2ef6-422c-acb8-06d3fe64064f"
  tenant_id = "20f62116-4d0c-44ac-8a45-390ca2765601"
  client_id = "a5f48996-9bf0-4d1f-8dd7-22ba0a6f11fe"
  client_secret = "Rex8Q~ZHeprEhokYVpyRYdFpo.OVifyBvEVDQdhO"
  features {    
  }
}

resource "azurerm_service_plan" "plan787878" {
  name                = "plan787878"
  resource_group_name = "az-rg-400-070124"
  location            = "North Europe"
  os_type             = "Windows"
  sku_name            = "F1"
}

resource "azurerm_windows_web_app" "newapp1002030" {
  name                = "newapp1002030"
  resource_group_name = "az-rg-400-070124"
  location            = "North Europe"
  service_plan_id     = azurerm_service_plan.plan787878.id

  site_config {
    always_on = false
    application_stack{
        current_stack="dotnet"
        dotnet_version="v6.0"
    }
  }

  depends_on = [
    azurerm_service_plan.plan787878
  ]
}

resource "azurerm_mssql_server" "sqlserver468985656" {
  name                         = "sqlserver468985656"
  resource_group_name          = "az-rg-400-070124"
  location                     = "North Europe"
  version                      = "12.0"
  administrator_login          = "sqlusr"
  administrator_login_password = "Azure@123"  
}

resource "azurerm_mssql_database" "appdb" {
  name           = "appdb"
  server_id      = azurerm_mssql_server.sqlserver468985656.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2  
  sku_name       = "Basic"
  depends_on = [
    azurerm_mssql_server.sqlserver468985656
  ]
}