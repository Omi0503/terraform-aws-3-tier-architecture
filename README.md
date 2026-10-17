# AWS 3-Tier Architecture Using Terraform

## Project Overview

This project demonstrates the implementation of a 3-tier architecture on Amazon Web Services (AWS) using Terraform (Infrastructure as Code).

The objective is to automate the creation and management of AWS infrastructure using reusable Terraform configuration files, while separating the network, application, and database layers.

## Architecture

The architecture consists of the following layers:

1. **Network Layer:** Custom VPC, public and private subnets, Internet Gateway, NAT Gateway, route tables, and security groups.
2. **Application Layer:** EC2 instance in a private subnet for hosting the application.
3. **Database Layer:** Database infrastructure in a private subnet, using MariaDB on EC2 or Amazon RDS depending on the final configuration.
4. **Access Layer:** A jump server in the public subnet for controlled administrative access to private instances.

## AWS Services Used

- Amazon VPC
- Amazon EC2
- Internet Gateway (IGW)
- NAT Gateway
- Route Tables
- Security Groups
- Amazon RDS (configured in Terraform)
- AWS Identity and Access Management (IAM)

## Technologies and Tools

- Terraform
- AWS Management Console
- AWS CLI
- Git and GitHub
- Visual Studio Code

## Project Structure

```text
terraform-aws-3-tier-architecture/
├── provider.tf
├── vpc.tf
├── subnet.tf
├── igm.tf
├── nat.tf
├── route-table.tf
├── security-group.tf
├── ec2.tf
├── rds.tf
├── variable.tf
├── output.tf
├── .terraform.lock.hcl
├── .gitignore
└── README.md
```

## Terraform Configuration Files

| File | Purpose |
|---|---|
| `provider.tf` | Configures the AWS provider |
| `vpc.tf` | Defines the custom VPC |
| `subnet.tf` | Defines public and private subnets |
| `igm.tf` | Defines the Internet Gateway |
| `nat.tf` | Configures NAT Gateway resources |
| `route-table.tf` | Defines routing and subnet associations |
| `security-group.tf` | Defines network access rules |
| `ec2.tf` | Defines EC2 instances |
| `rds.tf` | Defines the RDS subnet group and database resources |
| `variable.tf` | Defines input variables |
| `output.tf` | Defines Terraform outputs |

## Prerequisites

- An AWS account with the required IAM permissions
- Terraform installed on your local machine
- AWS CLI installed and configured
- Git installed
- Visual Studio Code (recommended)

## Deployment Steps

### 1. Configure AWS credentials

Configure your AWS CLI credentials using a secure method:

```bash
aws configure
```

Never commit AWS access keys or secret keys to GitHub.

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate the configuration

```bash
terraform validate
```

### 4. Format the configuration files

```bash
terraform fmt
```

### 5. Review the execution plan

```bash
terraform plan
```

Review the proposed changes before proceeding.

### 6. Deploy the infrastructure

```bash
terraform apply
```

Review the plan and type `yes` when you are ready to approve the deployment.

## Security Considerations

- Use IAM permissions following the principle of least privilege.
- Restrict SSH access to trusted IP addresses.
- Avoid exposing database ports to the public internet.
- Store credentials securely and never commit secrets.
- Do not upload Terraform state files or saved plan files to GitHub.
- Review AWS resource costs before deployment.

## Cleanup

When the infrastructure is no longer required, review the resources Terraform plans to remove and then run:

```bash
terraform destroy
```

Only execute this command when you intend to delete the infrastructure managed by this Terraform configuration.

## Learning Outcomes

- Understanding AWS networking and VPC architecture
- Working with public and private subnets
- Configuring routing, Internet Gateway, and NAT Gateway
- Managing EC2 and database infrastructure with Terraform
- Practicing Infrastructure as Code (IaC)
- Using Git and GitHub for version control

## Author

**Omkar Patange**

GitHub: [Omi0503](https://github.com/Omi0503)
