variable "pagerduty_token" {}
variable "my_user" {}

data "pagerduty_user" "me" {
  email = var.my_user
}

output "my_user_id" {
  value = data.pagerduty_user.me.id
}