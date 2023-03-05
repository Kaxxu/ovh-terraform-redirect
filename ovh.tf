resource "ovh_domain_zone_redirection" "main" {
  for_each = var.ovh_redirect

  subdomain = each.key
  zone      = var.domain
  target    = each.value
  type      = var.ovh_type
}
