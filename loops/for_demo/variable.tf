variable "instance_name" {
  type        = list(string)
  description = "Declare this variable for for loop"
  default     = ["machine_1", "machine_2", "machine_3"]
}
