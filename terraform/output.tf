# Public IP
output "public_ip" {
  value       = aws_ecs_service.app.network_configuration[0].awsvpc_configuration[0].subnets[0]
  description = "Public IP of the ECS service"
}
