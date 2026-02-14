resource "random_string" "suffix" {
  length  = 8
  upper   = false
  lower   = true
  special = false
}

locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

locals {
  min_nodes = 5
  max_nodes = 9
}
