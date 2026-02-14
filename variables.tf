variable "application_name" {
  type = string

  validation {
    condition     = length(var.application_name) <= 12
    error_message = "Application namne must be less than or equal to 12 characters."
  }
}

variable "environment_name" {
  type = string

  validation {
    condition     = length(var.environment_name) <= 10
    error_message = "Environment name must be less than or equal to 10 characters."
  }
}

variable "api_key" {
  sensitive = true
  type      = string

  validation {
    condition     = length(var.api_key) == 32
    error_message = "API key must be 32 characters long."
  }
}

variable "instance_count" {
  type = number

  validation {
    condition     = var.instance_count >= local.min_nodes && var.instance_count <= local.max_nodes && var.instance_count % 2 == 0
    error_message = "Must be between 1 and 10 and even."
  }
}

variable "enabled" {
  type = bool
}

#The List helps to define the number of instances in each region. The key is the region name and the value is the number of instances in that region.
variable "regions" {
  type = list(string)
}

#The dictionary helps to define the number of instances in each region. The key is the region name and the value is the number of instances in that region.
variable "regions_instance_count" {
  type = map(string)
}

# Difference between list and set is that list allows duplicates and set does not allow duplicates. Set is unordered collection of unique values.
variable "region_set" {
  type = set(string)
}

# The object type allows to define a complex variable with multiple attributes. In this case, the sku_Settings variable has two attributes: kind and tier.
variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}
