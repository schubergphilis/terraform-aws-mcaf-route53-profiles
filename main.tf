resource "aws_route53profiles_profile" "default" {
  name = var.name
}

resource "aws_route53profiles_resource_association" "default" {
  for_each = var.associated_resources

  name         = each.key
  profile_id   = aws_route53profiles_profile.default.id
  resource_arn = each.value
}
