output "instance_list" {
  value = { for name in aws_instance.demo_instance : name.id => name.public_ip }
}

output "instance_id" {
  value = [for ins in aws_instance.demo_instance : ins.id]
}

