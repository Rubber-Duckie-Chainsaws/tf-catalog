module "launch_template" {
  source = "../../primitives/ec2/lt"

  name  = var.name
  class = var.class
}
