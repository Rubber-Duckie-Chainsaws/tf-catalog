module "asg" {
  source                  = "../../../../primitives/ec2/asg"
  name                    = var.name
  desired_capacity        = var.desired_capacity
  max_size                = var.max_size
  min_size                = var.min_size
  max_instance_lifetime   = var.max_instance_lifetime
  launch_template_id      = module.launch_template.id
  launch_template_version = var.launch_template_version
  vpc_zone_identifier     = var.vpc_zone_identifier
  mixed_instances         = var.mixed_instances
  distribution_percentage = 0
}

module "launch_template" {
  source                 = "../../../../primitives/ec2/lt"
  env                    = var.env
  name                   = var.name
  class                  = var.class
  instance_type          = var.instance_type
  root_volume_size       = var.root_volume_size
  vpc_security_group_ids = var.vpc_security_group_ids
  update_default_version = true
  instance_profile       = var.instance_profile
  instance_initiated_shutdown_behavior = "terminate"
}
