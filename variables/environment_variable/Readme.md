# Follow the below steps
------------------------

## To format the terraform code
  `# terraform fmt`

## To download the modules
  `# terraform init`

## To validate the terraform code
  `# terraform validate`

*Note: While run the "terraform plan" and "terraform apply" it'll ask the 'ami' and 'instance_type', because we declared the variable of the 'resource.tf' file.  But the problem is you have provide the same input of 'ami' and 'instance_type' details*

## To export the env variables of 'ami' and 'instance_type' Linux machine
```
   # export TF_VAR_ami=ami-04e35eeae7a7c5883
   # export TF_VAR_instance_type=t3.micro
```

## To verify the env variables are set
  `# env | grep TF_VAR`

## To set the env variables in windows machine
```
   # $Env:TF_VAR_ami='ami-04e35eeae7a7c5883'
   # $Env:TF_VAR_instance_type='t3.micro'
```
## To verify the env variables
  `# dir env:`

## Now run the terraform plan and apply.  It'll take the variable value from the environment.
  ```
  # terraform plan
  # terraform apply 
```
## To Destroy the instance
  `# terraform destroy`

## To unset the env variables Linux
```
  # unset TF_VAR_ami
  # unset TF_VAR_instance_type`
```
## To verify the unset of variables
  `# env | grep TF_VAR`

## To unset the env variable in windows
 ```
   # $Env:TF_VAR_ami=$null
   # $Env:TF_VAR_instance_type=$null
```

## To verify removed the environment variable
  `# dir env:`