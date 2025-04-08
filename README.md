# ECS-Deployment

## Setup

### Provision S3 Bucket Backend for Terraform

```bash
cd terraform-backend
```

Create `secret.tfvars` file with the following content:

```hcl
aws_access_key = "YOUR_AWS_ACCESS_KEY"
aws_secret_key = "YOUR_AWS_SECRET_KEY"
```

Then run the following command to create the S3 bucket:

```bash
terraform init
terraform apply -var-file=secret.tfvars
```
This will create an S3 bucket for storing state file.

### Create GitLab Repository and add CI/CD Variables
Go to your GitLab repository, navigate to **Settings > CI/CD > Variables** and add the following variables:
    CI_REGISTRY_PASSWORD - Your GitLab access token with `read_registry` and `write_registry` permissions.
    AWS_ACCESS_KEY_ID - Your AWS access key ID.
    AWS_SECRET_ACCESS_KEY - Your AWS secret access key.

### Push whole code to GitLab

```bash
git remote set-url origin YOUR_GITLAB_REPO_URL
git push -u origin main
```
