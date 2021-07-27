# Deploy a Snowflake Pipe with Terraform

## Install Terraform

Follow the [instructions](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started) to install Terraform on your machine.

## AWS Authentication

Create a [shared credentials file](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/create-shared-credentials-file.html) with a profile that has permissions to create S3 buckets and IAM roles/policies.

## Snowflake Authentication

Follow steps 3 and 4 of the [DevOps: Terraforming Snowflake](https://quickstarts.snowflake.com/guide/terraforming_snowflake/index.html#2) quickstart to create a Service User for Terraform that uses key-pair authentication (you could alternatively alter an existing user to add key-pair authentication) and add the authentication information to the environment.

## Update the Variables

Update the `variables.auto.tfvars` file with your input variables.

## Initialize the Terraform Directory

Before deploying the resources you must [initialize the directory](https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started#initialize-the-directory) with the `terraform init` command. This must be done from inside the `/terraform` directory.

## Deploy the Terraform Configuration

To apply the configuration and create resources run the `terraform apply` command from the `/terraform` directory. The execution plan will be printed in the command line and you will need to approve before any changes are made.
