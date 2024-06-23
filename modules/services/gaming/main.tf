module "mixed-instance" {
  source = "../../constructs/ec2/autoscaling/mixed_instance_spot"
  env    = var.env

  name  = "game"
  class = "game"

  launch_template_version = "$Latest"

  instance_type         = "r6a.xlarge"
  mixed_instances       = var.mixed_instances
  instance_profile      = var.instance_profile
  max_instance_lifetime = var.max_instance_lifetime

  vpc_zone_identifier    = var.vpc_zone_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
}
