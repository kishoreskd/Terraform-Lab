environment_name = "dev"
instance_count   = 6
enabled          = true
regions          = ["us-east-1", "us-west-2", "us-east-1"]
regions_instance_count = {
  "us-east-1" = 2
  "us-west-2" = 2
}
region_set = ["us-east-1", "us-west-2"]
sku_settings = {
  kind = "Standard"
  tier = "Premium"
}
api_key = "12345678901234567890123456789012"