include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/ec2"
}

inputs = {
 instance_type = "t2.small"
 tags = {
    "team" = "dhruv"
 }
}