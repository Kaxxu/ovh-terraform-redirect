resource "ovh_domain_zone_redirection" "main" {
  for_each = var.ovh_redirect

  subdomain = "${each.key}.${var.domain}"
  target    = each.value
  type      = var.ovh_type
  zone      = var.domain
}
