# IllumiDesk Cloud Getting Started Guide Example

This is the configuration used to deploy the IllumiDesk stack with [Terraform Cloud]([https://](https://cloud.hashicorp.com/)).

## What will this do?

This is a Terraform configuration that manages the IllumiDesk stack. It will create the following resources:

- Auth0 Application
- AWS Application Load Balancer
- AWS EKS Cluster
- AWS EFS File System
- AWS ECR Repository
- AWS RDS Postgres Database
- AWS Security Groups
- AWS S3 Buckets
- AWS VPC

This setup uses the [VCS](https://www.terraform.io/docs/cloud/run/ui.html) option to run Terraform Cloud. This means that Terraform Cloud will automatically run `terraform plan` and `terraform apply` when changes are pushed to the repository.

## What are the prerequisites?

You must have an AWS account and provide your AWS Access Key ID and AWS Secret Access Key to Terraform Cloud. Terraform Cloud encrypts and stores variables using [Vault](https://www.vaultproject.io/). For more information on how to store variables in Terraform Cloud, see [our variable documentation](https://www.terraform.io/docs/cloud/workspaces/variables.html).

The values for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` should be saved as environment variables on your workspace.
