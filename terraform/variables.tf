# ----------------------------------------------------------------------------------------------------------------------
# Locals

locals {

  application = "APPLICATION"
  application_one_word = "APPLICATION"

  common_tags = {
    owner       = "AUTHOR" 
    created_by  = "Terraform"
    application = local.application
  }

  snowflake_warehouse   = "WAREHOUSE"
  snowflake_database    = "DATABASE"
  snowflake_schema      = "SCHEMA"

}

# ----------------------------------------------------------------------------------------------------------------------

data "aws_caller_identity" "current" {}

locals {

  aws_account_id  = data.aws_caller_identity.current.account_id
  aws_caller_arn  = data.aws_caller_identity.current.arn
  aws_caller_user = data.aws_caller_identity.current.user_id

}
