# Declared all the variables in **var-declaration-file** file (i.e the file name should be anything)
```
ami = "ami-04e35eeae7a7c5883"
instance_type = "t3.micro"
vpc_security_group_ids = ["sg-02682acf23a543aa5"]
volume_size = 20
region = "us-west-2"
profile = "default"
```

## To format the terraform code
  `# terraform fmt`

## To download the modules
  `# terraform init`

## To validate the terraform code
  `# terraform validate`

### *Note:  You declared variable values in **var-declaration-file** while executing the `# terraform plan`, `# terraform apply` and `# terraform destroy` we need to provide this var file name.*

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
  terraform plan -var-file=var-declaration-file 
  # terraform apply -var-file=var-declaration-file
```

## To Destroy the instance
  `terraform destroy -var-file=var-declaration-file`
