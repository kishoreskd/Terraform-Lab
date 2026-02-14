environment_name = "prod"
instance_count   = 4
enabled          = true
regions          = ["us-east-1", "us-west-2"]
regions_instance_count = {
  "us-east-1" = 2
  "us-west-2" = 2
}
