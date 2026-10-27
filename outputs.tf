output "users_id" {
  description = "Map of id values across all users, keyed the same as var.users"
  value       = { for k, v in newrelic_user.users : k => v.id }
}
output "users_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all users, keyed the same as var.users"
  value       = { for k, v in newrelic_user.users : k => v.authentication_domain_id }
}
output "users_email_id" {
  description = "Map of email_id values across all users, keyed the same as var.users"
  value       = { for k, v in newrelic_user.users : k => v.email_id }
}
output "users_name" {
  description = "Map of name values across all users, keyed the same as var.users"
  value       = { for k, v in newrelic_user.users : k => v.name }
}
output "users_user_type" {
  description = "Map of user_type values across all users, keyed the same as var.users"
  value       = { for k, v in newrelic_user.users : k => v.user_type }
}

