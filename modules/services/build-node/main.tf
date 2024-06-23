module "mixed-instance" {
  source = "../../constructs/ec2/autoscaling/mixed_instance_spot"
  env    = var.env

  name                   = "build-worker"
  class                  = "build"

  launch_template_version = "$Latest"

  mixed_instances  = var.mixed_instances
  instance_profile = var.instance_profile
  max_size         = var.max_size
  min_size         = var.min_size
  desired_capacity = var.desired_capacity

  root_volume_size       = var.root_volume_size
  vpc_zone_identifier    = var.vpc_zone_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
}
