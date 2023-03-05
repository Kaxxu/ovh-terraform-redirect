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

variable "TFC_WORKSPACE_SLUG" {
  description = "Terraform Cloud Workspace"
  default     = "Terraform Cloud"
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

variable "aws_region" {
  description = "Region Used"
}
