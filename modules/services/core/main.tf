module "vpc" {
  source = "../../primitives/infra/vpc"

  name = var.name
  cidr_block = var.cidr_block
}

module "public" {
  source = "../../primitives/infra/subnet"

  vpc_id = module.vpc.id
  name = "${var.name}-public"
  cidr_block = var.public_cidr_block
  ipv6_cidr_block = var.ipv6_cidr_block
  public = true
}
