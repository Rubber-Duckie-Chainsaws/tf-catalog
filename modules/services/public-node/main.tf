module "launch_template" {
  source = "git@github.com:rubber-duckie-chainsaws/tf-primitives//aws/ec2/lt?rev=main"

  name  = var.name
  class = var.class
}
