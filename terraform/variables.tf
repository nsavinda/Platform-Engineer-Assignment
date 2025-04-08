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
  description = "Full image name including tag"
  type        = string
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

variable "ci_user" {
  description = "CI/CD user for GitLab"
  type        = string
}

variable "ci_password" {
  description = "CI/CD password for GitLab"
  type        = string
  sensitive   = true
}

variable "secret_name" {
  description = "Name for the Secrets Manager secret"
  type        = string
  default     = "gitlab-container-credentials-2"
}
