variable "hyperdrive_configs" {
  description = <<EOT
Map of hyperdrive_configs, attributes below
Required:
    - account_id
    - name
    - origin
Optional:
    - caching
    - mtls
    - origin_connection_limit
EOT

  type = map(object({
    account_id = string
    name       = string
    origin = object({
      access_client_id     = optional(string)
      access_client_secret = optional(string)
      database             = string
      host                 = optional(string)
      password             = string
      port                 = optional(number)
      scheme               = string
      service_id           = optional(string)
      user                 = string
    })
    caching = optional(object({
      disabled               = optional(bool)
      max_age                = optional(number)
      stale_while_revalidate = optional(number)
    }))
    mtls = optional(object({
      ca_certificate_id   = optional(string)
      mtls_certificate_id = optional(string)
      sslmode             = optional(string)
    }))
    origin_connection_limit = optional(number)
  }))
}

