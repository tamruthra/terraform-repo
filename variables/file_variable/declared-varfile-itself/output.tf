output "instance_id" {
  description = "To get the output of instance_id"
  value       = aws_instance.tf_demo_instance.id

}
output "vpc_security_group_ids" {
  description = "To get the output of map variable declaration"
  value       = aws_instance.tf_demo_instance.vpc_security_group_ids

}
output "instance_type" {
  description = "To get the output of list variable declaration"
  value       = aws_instance.tf_demo_instance.instance_type
}
output "monitoring" {
  description = "To get the output of boolean variable"
  value       = aws_instance.tf_demo_instance.monitoring

}