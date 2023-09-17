########
# MAIN #
########

variable "name" {
  description = "Project Name"
}

variable "environment" {
  description = "Environment name"
}

variable "domain" {
  description = "Domain name"
}

#######
# OVH #
#######

variable "ovh_type" {
  description = "Redirect type"
  default     = "visiblePermanent"
}

variable "ovh_redirect" {
  description = "Redirections - KEY: subdomain; VALUE: redirect_target "
  type        = map(string)
}

#######
# AWS #
#######

variable "region" {
  description = "Region Used"
}
