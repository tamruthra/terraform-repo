output "instance_id" {
    value = aws_instance.tf_demo_instance.id
  
}
output "public_ip" {
    value = aws_instance.tf_demo_instance.public_ip
}
