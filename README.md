# Goal
Provision an EC2 instance in a non-default VPC with IGW in a Subnet. Create modules for the different components of the system like networking and compute.

# Pre-requisites
- [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html])
- [Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html#cli-configure-files-using-profiles)
- [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

# Run
- `terraform init`
- `terraform plan`
- `terraform apply -auto-approve`