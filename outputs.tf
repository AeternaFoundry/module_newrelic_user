output "users_id" {
  description = "Map of id values across all users, keyed the same as var.users except keys with no id are omitted"
  value       = { for k, v in newrelic_user.users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all users, keyed the same as var.users except keys with no authentication_domain_id are omitted"
  value       = { for k, v in newrelic_user.users : k => v.authentication_domain_id if v.authentication_domain_id != null && length(v.authentication_domain_id) > 0 }
}
output "users_email_id" {
  description = "Map of email_id values across all users, keyed the same as var.users except keys with no email_id are omitted"
  value       = { for k, v in newrelic_user.users : k => v.email_id if v.email_id != null && length(v.email_id) > 0 }
}
output "users_name" {
  description = "Map of name values across all users, keyed the same as var.users except keys with no name are omitted"
  value       = { for k, v in newrelic_user.users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "users_user_type" {
  description = "Map of user_type values across all users, keyed the same as var.users except keys with no user_type are omitted"
  value       = { for k, v in newrelic_user.users : k => v.user_type if v.user_type != null && length(v.user_type) > 0 }
}

