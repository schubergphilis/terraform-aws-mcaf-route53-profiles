# terraform-aws-mcaf-route53-profiles
Terraform module to:

- create [Route53 Profiles](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/profiles.html)
- associate Route53 resources to the Profile

# Usage

To create a Route53 Profile and associated resources, define the following input variables:

1. `name` - This will be the name of the Route53 Profile
2. `associated_resources` - This maps association names to resource ARNs that will be associated with the Route53 Profile

```hcl
module "route53_profile" {
  source = "../../"

  name = "profile-1"
  associated_resources = {
    resolver-rule-1 = "arn:aws:route53resolver:eu-central-1:123456789012:resolver-rule/rslvr-rr-01a2bcd3456e7890f"
    resolver-rule-2 = "arn:aws:route53resolver:eu-central-1:123456789012:resolver-rule/rslvr-rr-02a2bcd3456e7890f"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.82 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.82 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53profiles_profile.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53profiles_profile) | resource |
| [aws_route53profiles_resource_association.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53profiles_resource_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_associated_resources"></a> [associated\_resources](#input\_associated\_resources) | A map of Association Names to Resource ARNs to associate with the AWS Route53 Profile | `map(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Route53 Profile | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_profile_arn"></a> [profile\_arn](#output\_profile\_arn) | n/a |
| <a name="output_profile_id"></a> [profile\_id](#output\_profile\_id) | n/a |
| <a name="output_profile_name"></a> [profile\_name](#output\_profile\_name) | n/a |
<!-- END_TF_DOCS -->