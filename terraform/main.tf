# ----------------------------------------------------------------------------------------------------------------------
terraform {

  required_version = ">= 0.15.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.44.0"
    }
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = ">= 0.25.4"
    }
  }

}

provider "aws" {
  profile = "terraform"
  region  = "eu-west-2"
}

provider "snowflake" {
  role = "SYSADMIN"
}

# ----------------------------------------------------------------------------------------------------------------------
module "aws_s3" {
  source = "./modules/aws_s3"

  s3_bucket_unique_identifier = var.s3_bucket_unique_identifier
  application_name            = var.application_name
  common_tags                 = local.common_tags

}

# ----------------------------------------------------------------------------------------------------------------------
module "sno_integration" {
  source = "./modules/sno_integration"

  application_name = var.application_name
  common_tags      = local.common_tags

  snowflake_database = var.snowflake_database
  snowflake_schema   = var.snowflake_schema
  stage_prefix       = var.stage_prefix

  aws_account_id    = local.aws_account_id
  aws_s3_bucket_id  = module.aws_s3.aws_s3_bucket_id
  aws_s3_bucket_arn = module.aws_s3.aws_s3_bucket_arn

}

# ----------------------------------------------------------------------------------------------------------------------
module "sno_pipe" {
  source = "./modules/sno_pipe"

  application_name = var.application_name

  snowflake_database = var.snowflake_database
  snowflake_schema   = var.snowflake_schema
  snowflake_stage    = module.sno_integration.snowflake_stage
  pipe_prefix        = var.pipe_prefix
  table_name         = var.table_name

  aws_s3_bucket_id  = module.aws_s3.aws_s3_bucket_id

}
