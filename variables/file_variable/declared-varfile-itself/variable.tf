# string variables declaration
variable "ami" {
  type        = string
  description = "This is the variable declaration for ami, type of variable = list"
  default     = "ami-04e35eeae7a7c5883"
}
variable "key_name" {
  type        = string
  description = "This is the variable declaration for key_name, type of variable = list"
  default     = "login-keypair"
}

# list variable declaration
variable "instance_type" {
  type        = list(any)
  description = "This is the variable declaration for instance_type, type of variable = list"
  default     = ["t3.micro", "t3.medium", "t2.micro"] # list value start from 0 like [0]=t3.micro, [1]=t3.medium, [2]=t2.micro
}

# number variable declaration
variable "volume_size" {
  type        = number
  description = "This is the variable declaration for volume_size, type of variable = number"
  default     = 20
}

# map variable declaration
variable "region" {
  type        = map(string)
  description = "This is the variable declaration for region, type of variable = map"
  default = {
    "us-west" = "us-west-2"
    "us-east" = "us-east-2"
  }

}
variable "vpc_security_group_ids" {
  type        = map(string)
  description = "This is the variable declaration for vpc_security_group_ids, type of variable = map(string)"
  default = {
    "default" = "sg-02682acf23a543aa5"
    "bastion" = "sg-0dc79a3e4eaa001ca"
  }
}
# boolean variable decalaration

variable "monitoring" {
  type        = bool
  description = "This is the variable for monitoring, type of variable = Boolean"
  default     = true

}