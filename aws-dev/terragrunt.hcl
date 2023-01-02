# terragrunt.hcl

locals {
  # Automatically load account-level variables
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))

  # Extract the variables we need for easy access
  account_name = local.account_vars.locals.account_name
  account_id   = local.account_vars.locals.aws_account_id
  aws_region   = local.account_vars.locals.aws_region
  aws_profile  = local.account_vars.locals.aws_profile
}



generate "versions" {
  path      = "versions.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<EOF
    terraform {
      required_providers {
            aws = {
                source  = "hashicorp/aws"
                version = "~> 4.45.0"
            }
        }
    }
    EOF
}

# Generate an AWS provider block
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"
  profile = "${local.aws_profile}"
}
EOF
}
