variable "instance_type" {
  type = map
  default  = {
    prod = "t2.large"
    dev = "t2.small"
    default = "t2.nano"
  }
}
