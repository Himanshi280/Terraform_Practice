#import command and variable precedence
resource "newrelic_alert_policy" "policy" {
    
    name = var.name
}
variable "name" {
    type = string
    default = "var-policy"
}
#data block
data "newrelic_alert_policy" "example_policy" {
  name = "policy-1"
}
resource "newrelic_alert_channel" "email_channel" {
  name = "email_channel"
  type = "email" 
  config {
    recipients              = "himanshisoni2805@gmail.com"
    
  }  
}
resource "newrelic_alert_policy_channel" "foo" {
  policy_id  = data.newrelic_alert_policy.example_policy.id
  channel_ids = [
    newrelic_alert_channel.email_channel.id
    
  ]
}
#import block
import {
  to = newrelic_alert_policy.import_block_policy
  id = "4991286"
}
resource "newrelic_alert_policy" "import_block_policy" {
    
    name = "import_policy"
}