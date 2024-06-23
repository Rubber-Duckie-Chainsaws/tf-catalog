module "vpc" {
  source = "git@github.com:rubber-duckie-chainsaws/tf-primitives//aws/infra/vpc?rev=main"

  name = var.name
  cidr_block = var.cidr_block
}

module "public" {
  source = "git@github.com:rubber-duckie-chainsaws/tf-primitives//aws/infra/subnet?rev=main"

  vpc_id = module.vpc.id
  name = "${var.name}-public"
  cidr_block = var.public_cidr_block
  ipv6_cidr_block = var.ipv6_cidr_block
  public = true
}
