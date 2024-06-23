variable "name" {}
variable "cidr_block" {}
variable "ipv6_cidr_block" {
  type     = string
  nullable = true
}
variable "public_cidr_block" {}
