variable "users" {
  description = <<EOT
Map of users, attributes below
Required:
    - authentication_domain_id
    - email_id
    - name
Optional:
    - user_type
EOT

  type = map(object({
    authentication_domain_id = string
    email_id                 = string
    name                     = string
    user_type                = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

