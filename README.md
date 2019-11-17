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
