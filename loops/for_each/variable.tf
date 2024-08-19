variable "ins_name" {
  type        = list(string)
  description = "This is for_each var declaration"
  default     = ["tf_ins_1", "tf_ins_2", "tf_ins_3", "tf_ins_1"]
}

# Declare the list(string) variable and we can convert that into set variable

variable "user_name" {
  type        = list(string)
  description = " This is list var for for_ech"
  default     = ["user1", "user2", "user3","user1"]
}
