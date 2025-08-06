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
