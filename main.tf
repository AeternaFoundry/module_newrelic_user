resource "newrelic_user" "users" {
  for_each = var.users

  authentication_domain_id = each.value.authentication_domain_id
  email_id                 = each.value.email_id
  name                     = each.value.name
  user_type                = each.value.user_type
}

