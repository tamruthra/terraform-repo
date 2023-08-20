# Declared all the variables in terraform.tfvars file
```
ami                    = "ami-04e35eeae7a7c5883"
instance_type          = "t3.micro"
vpc_security_group_ids = ["sg-0dc79a3e4eaa001ca"]
region                 = "us-west-2"
profile                = "default"
volume_size            = 20
```

## To format the terraform code
  `# terraform fmt`

## To download the modules
  `# terraform init`

## To validate the terraform code
  `# terraform validate`

### *Note:  You declared variable values in **terraform.tfvars** (i.e. this file name and extention should not change). Don't need to pass the variables during the **terraform apply** or **terraform destroy**, it'll pick from **terraform.tfvars** file .  Might be this method will use for production*

## Output.tf is get the output of the instance

### *Here get the output of created ** instance id and publicip***

```
output "instance_id" {
    value = aws_instance.tf_demo_instance.id
  
}
output "public_ip" {
    value = aws_instance.tf_demo_instance.public_ip
}

```
## Now run the terraform plan and apply.  It'll take the variable value from the environment.
  ```
  # terraform plan
  # terraform apply 
```

## To Destroy the instance
  `# terraform destroy`
