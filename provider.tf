terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 4268478
  api_key = "NRAK-4UV9451N3XSM4RPTUVCKWBWIULX"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}