# Follow the below steps
------------------------

## To format the terraform code
  `# terraform fmt`

## To download the modules
  `# terraform init`

## To validate the terraform code
  `# terraform validate`

*Note: While run the "terraform plan" and "terraform apply" it'll ask the 'ami' and 'instance_type', because we declared the variable of the 'resource.tf' file.  But the problem is you have provide the same input of 'ami' and 'instance_type' details*

## Now run the terraform plan and apply.
```
# terraform plan -var ami=ami-04e35eeae7a7c5883 -var instance_type=t3.micro
# terraform apply -var ami=ami-04e35eeae7a7c5883 -var instance_type=t3.micro
```

                    or 
```
# terraform plan -out "tf_plan" -var ami=ami-04e35eeae7a7c5883 -var instance_type=t3.micro
# terraform apply -out "tf_plan"
```

## To verify the instance with 
` # terraform show `

## To Destroy the instance
`# terraform destroy -var ami=ami-04e35eeae7a7c5883 -var instance_type=t3.micro`
 
 #### *If you are create resource with ***terraform apply -out "tf_plan"*** you can use the ***"tfplan"*** to destroy*
 `# terraform destroy -out "tf_plan"`
