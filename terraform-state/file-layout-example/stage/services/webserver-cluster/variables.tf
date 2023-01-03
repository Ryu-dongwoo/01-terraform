variable "server_port" {
  description = "The port will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "sercurity_group_name" {
  type    = string
  default = "aws08-terraform-example-instance"
}
