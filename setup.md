# Setup Guide for Two-Tier Application on AWS

This setup guide walks you through the steps to deploy a two-tier application on AWS using Terraform. Ensure you have an AWS account and appropriate permissions to create resources.

## Prerequisites

- AWS Account
- AWS CLI installed and configured
- An SSH key pair for EC2 instance access

## Step 1: Install Terraform

To deploy the application, you need to have Terraform installed on your machine. Follow the instructions on the official Terraform website to download and install Terraform for your operating system:

[Terraform Installation Guide](https://www.terraform.io/downloads)

## Step 2: Initialize Terraform

1. Clone the repository containing the Terraform files (`.tf`) for the two-tier application:

```bash
git clone https://github.com/alaadwaikat-t/two-tier-app.git
cd two-tier-app-terraform
```

2. Initialize Terraform to download necessary providers and set up the workspace:

```bash
terraform init
```

This command prepares your directory for other Terraform commands and ensures that your configuration is valid.

## Step 3: Prepare & Plan Deployment

a. As the password of the DB should not be exposed with variables, run the following command to set the db password 
```bash
export TF_VAR_db_password="<SET_YOUR_DB_PASSWORD>"
```

b. Update terraform.tfvars to match your AWS account details

c. Run the Terraform plan to preview the changes that will be made to your AWS infrastructure:

```bash
terraform plan
```
## Step 4: Deploy the Application

After reviewing the plan, apply the configuration to create the AWS resources and deploy the two-tier application:

```bash
terraform apply
```

When prompted, type yes to confirm the action.

This process may take a few minutes. Once completed, Terraform will output any configured outputs, such as the public IP address or domain name of your application.

