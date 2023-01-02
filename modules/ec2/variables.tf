variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Instance flavour like t2.micro, t2.small"

}

variable "tags" {
  type = map(string)
  default = {
    "tenant" = "xyz"
  }
}
