output "static_msg" {
  value = "This Terraform code static message"
}

output "demo_public_ip" {
  value = aws_instance.demo_instance.public_ip
}

output "demo_sensitive" {
  value     = aws_instance.demo_instance.id
  sensitive = true
}
