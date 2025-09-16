variable "ami" {
  type        = string
  description = "Amazon Linux 2023 AMI 2023.8.20250908.0 x86_64 HVM kernel-6.12"
  default     = "ami-0d85d4f07a62e2969"
}
variable "instance_type" {
  type        = string
  description = "Free tier eligible instance"
  default     = "t3.micro"
}
variable "security_group" {
  type        = list(string)
  description = "Webserver and default security group add"
  default     = ["sg-0444e4d70b15a3572", "sg-0a1d7cb2297ededc7"]
}
