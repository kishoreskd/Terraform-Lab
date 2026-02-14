output "application_name" {
  value = var.application_name
}

output "env_name" {
  value = var.environment_name
}

output "env_prefix" {
  value = local.environment_prefix
}

output "suffix" {
  value = random_string.suffix.result
}

output "api_key" {
  value     = var.api_key
  sensitive = true
}

output "instance_count" {
  value = var.instance_count
}

