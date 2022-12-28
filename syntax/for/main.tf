provider "local" {
}

variable "user_names" {
  description = "Names to render"
  type        = list(string)
  default     = ["aws08-neo", "aws08-trinity", "aws08-morpheus"]
}

output "for_directive" {
  value = <<EOF
		%{~ for name in var.user_names}
			${name}
		%{~ endfor}
			EOF
}
