variable "class" {}
variable "env" {}

variable "instance_profile" {}

variable "instance_type" {
  type    = string
  default = "t3a.small"
}

variable "name" {}

variable "root_volume_size" {}
variable "update_default_version" {
  default = true
}

variable "spot_instance_type" {
  type    = string
  default = "one-time"
  validation {
    condition     = contains(["one-time", "persistent"], var.spot_instance_type)
    error_message = "Spot instance type can only be 'one-time' or 'persistent'"
  }
}

variable "spot_interruption_behavior" {
  type    = string
  default = "terminate"
  validation {
    condition     = contains(["hibernate", "stop", "terminate"], var.spot_interruption_behavior)
    error_message = "Spot interruption behaviour must be 'hibernate', 'stop', or 'terminate'"
  }
}

variable "spot_max_price" {
  default = null
}

variable "vpc_security_group_ids" {}
