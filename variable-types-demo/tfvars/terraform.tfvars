ami            = "ami-0a4408457f9a03be3"
instance_type  = "t2.micro"
tags           = { "Name" = "tf_machine", "environment" = "demo" }
security_group = ["sg-0a40e8254fd4f343e", "sg-04c5a2a41361a98fd"]
volume_size    = "20"
