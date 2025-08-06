variable "name" {
  type        = string
  description = "Name of the Route53 Profile"
}

variable "associated_resources" {
  type        = map(string)
  description = "A map of Association Names to Resource ARNs to associate with the AWS Route53 Profile"
}
