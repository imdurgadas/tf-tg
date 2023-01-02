# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "dev"
  aws_account_id = "AWS_ACCOUNT_ID_VALUE_HERE" # TODO: replace me with your AWS account ID!
  aws_profile    = "psl-aws"
  aws_region     = "us-east-1"
}
