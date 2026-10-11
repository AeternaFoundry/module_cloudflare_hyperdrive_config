resource "cloudflare_hyperdrive_config" "hyperdrive_configs" {
  for_each = var.hyperdrive_configs

  account_id              = each.value.account_id
  name                    = each.value.name
  origin                  = each.value.origin
  caching                 = each.value.caching
  mtls                    = each.value.mtls
  origin_connection_limit = each.value.origin_connection_limit
}

