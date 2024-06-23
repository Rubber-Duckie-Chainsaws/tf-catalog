locals {
  spot_instance_options = [{
    Interrupt = var.spot_interruption_behavior,
    Price     = var.spot_max_price,
    SpotType  = var.spot_instance_type,
  }]
}

module "launch_template" {
  source = "git@github.com:rubber-duckie-chainsaws/tf-primitives//aws/ec2/lt?rev=main"
  env    = var.env

  name                   = var.name
  class                  = var.class
  instance_type          = var.instance_type
  root_volume_size       = var.root_volume_size
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_profile       = var.instance_profile
  spot_instance_options  = local.spot_instance_options
  update_default_version = var.update_default_version

  instance_initiated_shutdown_behavior = "terminate"
}
