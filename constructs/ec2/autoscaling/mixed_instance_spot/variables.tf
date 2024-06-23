variable "name" {}
variable "class" {}
variable "env" {}

variable "desired_capacity" {
  default = 1
}

variable "max_size" {
  default = 5
}

variable "min_size" {
  default = 0
}

variable "max_instance_lifetime" {
  # TODO: Add validation (86400 - 31536000)
  default = 0
}

variable "launch_template_version" {
  default = "$Default"
}

variable "instance_type" {
  default = "t3a.small"
}

variable "vpc_zone_identifier" {
  type = list
}
variable "vpc_security_group_ids" {
  type = list
}
variable "instance_profile" {}

variable "root_volume_size" {
  default = 16
}

variable "mixed_instances" {
  type = list
}
