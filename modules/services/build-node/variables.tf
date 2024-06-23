variable "env" {}

variable "instance_profile" {}
variable "max_instance_lifetime" {
  # TODO: Add validation (86400 - 31536000)
  default = 0
}
variable "root_volume_size" {
  default = 10
}

variable "desired_capacity" {
  default = 1
}
variable "max_size" {
  default = 5
}
variable "min_size" {
  default = 0
}

variable "mixed_instances" {
  type = list
}

variable "vpc_zone_identifier" {
  type = list
}
variable "vpc_security_group_ids" {
  type = list
}
