# OVH Terraform Redirect
Terraform stack to create inside the OVH, a redirection for domain to target URL.

# OVH API
Create OVH api key's at:

[OVH Token Creation Page](https://api.ovh.com/createToken/?GET=/*&POST=/*&PUT=/*&DELETE=/*) - Require to login

Set the global variables in OS:
```bash
export OVH_ENDPOINT="ovh-eu"
export OVH_APPLICATION_KEY=""
export OVH_APPLICATION_SECRET=""
export OVH_CONSUMER_KEY=""
```
# New Environment
Set new environment creating new file inside `params` directory:
```bash
touch params/new_environment.tfvars
```

# Terraform workspace
Setting new `workspace`:
```bash
terraform workspace new <TARGET_NAME>
```

Listing all `workspace`:
```bash
terraform workspace list
```

Show currently used `workspace`:
```bash
terraform workspace show
```

Change `workspace` to `<NAME>`: 
```bash
terraform workspace select <NAME>
```

# Terraform
Check and plan if everything is done:
```bash
terraform plan --var-file=params/TARGET_NAME.tfvars
```

Apply the changes in code to work:
```bash
terraform apply --var-file=params/TARGET_NAME.tfvars
```

Destroy the created redirection - access to the terraform state file is required:
```bash
terraform destroy --var-file=params/TARGET_NAME.tfvars
```

# Terraform Documentation
Terraform resources documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.5.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | = 5.11.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | 0.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | 0.32.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_domain_zone_redirection.main](https://registry.terraform.io/providers/ovh/ovh/0.32.0/docs/resources/domain_zone_redirection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Domain name | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Project Name | `any` | n/a | yes |
| <a name="input_ovh_redirect"></a> [ovh\_redirect](#input\_ovh\_redirect) | Redirections - KEY: subdomain; VALUE: redirect\_target | `map(string)` | n/a | yes |
| <a name="input_ovh_type"></a> [ovh\_type](#input\_ovh\_type) | Redirect type | `string` | `"visiblePermanent"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region Used | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
