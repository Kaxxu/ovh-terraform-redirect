variable "ovh_zone" {
  description = "Set your domain e.g. 'example.com'"
  default     = ""
}

variable "ovh_type" {
  description = "Leaving empty will result in 'visiblePermanent'"
  default     = ""
}

variable "ovh_target" {
  description = "Set Target key as Workspace name - Value is the redirection target - replace or delete the below examples"
  type        = "map"
  default = {
    git      = "https://github.com/"
    linkedin = "https://www.linkedin.com/"
  }
}
