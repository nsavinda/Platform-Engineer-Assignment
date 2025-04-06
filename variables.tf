variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ecs_cluster_name" {
  description = "ECS Cluster name"
}

variable "ecs_service_name" {
  description = "ECS Service name"
}

variable "task_family" {
  description = "Task definition family"
}

variable "task_cpu" {
  description = "CPU for Fargate task"
  default     = "256"
}

variable "task_memory" {
  description = "Memory for Fargate task"
  default     = "512"
}

variable "container_image" {
  description = "Docker image URL"
    default     = "nginx:latest"
}

variable "desired_count" {
  description = "Number of ECS service tasks"
  default     = 1
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret access key"
  type        = string
  sensitive   = true
}
