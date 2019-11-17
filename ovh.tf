provider "ovh" {
  endpoint           = ""
  application_key    = ""
  application_secret = ""
  consumer_key       = ""
}


resource "ovh_domain_zone_redirection" "main" {
  target    = var.ovh_target[terraform.workspace]
  type      = var.ovh_type != "" ? var.ovh_type : "visiblePermanent"
  zone      = var.ovh_zone
  subdomain = terraform.workspace
}
