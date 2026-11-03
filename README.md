# AWS OIDC Authentication with GitHub Actions and Terraform

## Project Overview

Implemented a secure CI/CD pipeline using GitHub Actions and AWS OpenID Connect (OIDC) to automate AWS infrastructure provisioning with Terraform.

This project demonstrates how GitHub Actions can securely authenticate with AWS without storing permanent AWS Access Keys and Secret Access Keys in GitHub Secrets.

## What is OIDC?

OIDC (OpenID Connect) is an authentication protocol that allows applications to verify identities securely.

In this project, OIDC establishes secure authentication between GitHub Actions and AWS.

## Architecture Workflow

1. Developer pushes Terraform code to GitHub.
2. GitHub Actions workflow is triggered.
3. GitHub generates an OIDC identity token.
4. AWS verifies the token using the IAM OIDC Identity Provider.
5. AWS IAM checks the role trust policy.
6. AWS STS provides temporary security credentials.
7. Terraform uses the temporary credentials to deploy AWS infrastructure.

## AWS Components Used

- AWS IAM OIDC Identity Provider
- AWS IAM Role
- IAM Trust Policy
- AWS Security Token Service (STS)
- GitHub Actions
- Terraform

## Project Structure

```text
terraform-aws-oidc-cicd/
│
├── README.md
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
│
└── .github/
    └── workflows/
        └── terraform.yml
```

## GitHub Actions Pipeline

The pipeline automates:

- Terraform Init
- Terraform Format
- Terraform Validate
- Terraform Plan
- Terraform Apply

## Security Benefits

- No permanent AWS access keys stored in GitHub Secrets.
- Temporary credentials through AWS STS.
- IAM role-based authentication.
- Repository and branch-level trust restrictions.
- Improved CI/CD security.

## Technologies Used

AWS | IAM | OIDC | STS | GitHub Actions | Terraform | YAML

## Key Learning Outcomes

- Configured AWS OIDC Identity Provider.
- Created IAM roles and trust policies.
- Integrated GitHub Actions with AWS using OIDC.
- Implemented keyless AWS authentication.
- Automated infrastructure provisioning using Terraform.

## Author

Venkatesh

Cloud & DevOps Engineer | AWS | Linux | Terraform | GitHub Actions
