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

### CI/CD Pipeline
Pipeline will be triggered automatically after pushing the code to GitLab. It will build the Docker image, push it to the GitLab container registry, and deploy it to AWS ECS.

### Vertical Scaling
<!-- Trigger the pipeline with variable 'TASK_CPU' and 'TASK_MEMORY' to scale the task.  -->
Manually trigger the pipeline with the following variables:
```
TASK_CPU=512
TASK_MEMORY=1024
```

### DevOps vs Platform Engineering


DevOps is bridging the gap between software developers and operators. DevOps aims to enhance the speed and quality of software delivery. Automate to accelerate processes in software delivery, such as building, testing, and deploying. 

Platform Engineering enhances DevOps practices by offering standardized tools and services, enabling Development teams to build software solutions more efficiently. Platform Engineers empower Developers by providing an environment, tools, and standardized practices. Standardization helps to reduce inconsistencies and improve both predictability and efficiency in various projects.

### DevSecOps and its importance

DevSecOps is an enhancement for DevOps that ensures security in the whole process. As technology advances, the threat landscape becomes increasingly complex and challenging. Therefore, transitioning to DevSecOps is crucial, as it ensures that security measures evolve alongside the rapid development and deployment typical of today's agile and DevOps practices.

In DevSecOps, security is considered from the beginning and throughout the whole development process, unlike the traditional approach, which is costly and time consuming.
In DevSecOps, it is encouraged to automate security processes, such as vulnerability scanning, before deployment. Also, it helps to comply with legal requirements like HIPAA and GDPR.
