# OVH Terraform Redirect
Terraform module to create inside the OVH service a redirection using own domain to target URL using the `terraform workspace` command.

# OVH API
Create OVH api key's at:

https://eu.api.ovh.com/createApp/

Set the below variables in `ovh.tf`
- endpoint
- application_key
- application_secret
- consumer_key

# Variables.tf
Set your domain name in:
`ovh_zone` (e.g. `example.com`)

Set Redirection way in: `ovh_type` - Leaving empty will be used `visiblePermanent` 
- `visible`
  - Redirection by http code 302
- `visiblePermanent`
  - Redirection by http code 301
- `invisible`
  - Redirection by html frame

Setting the redirection target by `ovh_target`. Set Target key as Workspace name - Value is the redirection target

# Terraform workspace
Setting new `workspace`:
```
terraform workspace new <TARGET_NAME>
```

Listing all `workspace`:
```
terraform workspace list
```

Show currently used `workspace`:
```
terraform workspace show
```

Change `workspace` to `<NAME>`: 
```
terraform workspace select <NAME>
```

# Terraform
Check and plan if everything is done:
```
terraform plan
```

Apply the changes in code to work:
```
terraform apply
```

Destroy the created redirection - access to the terraform state file is required:
```
terraform destroy
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
| <a name="input_TFC_WORKSPACE_SLUG"></a> [TFC\_WORKSPACE\_SLUG](#input\_TFC\_WORKSPACE\_SLUG) | Terraform Cloud Workspace | `string` | `"Terraform Cloud"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region Used | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain name | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Project Name | `any` | n/a | yes |
| <a name="input_ovh_redirect"></a> [ovh\_redirect](#input\_ovh\_redirect) | Redirections - KEY: subdomain; VALUE: redirect\_target | `map(string)` | n/a | yes |
| <a name="input_ovh_type"></a> [ovh\_type](#input\_ovh\_type) | Redirect type | `string` | `"visiblePermanent"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
