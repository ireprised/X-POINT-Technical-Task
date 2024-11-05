# CloudFormation and Auto Scaling Group Setup

## Overview

This project provides a CloudFormation template to create an AWS Launch Template and an Auto Scaling Group (ASG) that utilizes the Launch Template. Additionally, a Bash script is included to facilitate the creation of the ASG with customizable parameters.

## Components

1. **CloudFormation Template (`template.yaml`)**

   - Creates a Launch Template for EC2 instances.
   - Configures an Auto Scaling Group that uses the Launch Template.
   - Allows customization of the base name, key pair, desired capacity, and subnet ID.

2. **Bash Script (`script.sh`)**
   - Accepts command-line parameters to create an ASG.
   - Provides a help message for usage instructions.
   - Validates input parameters for base name and instance count.

## CloudFormation Template Details

- **Launch Template**:

  - Instance Type: `t3.micro`
  - Image ID: Replace with a valid AMI ID.
  - Key Name: Must reference an existing EC2 KeyPair.
  - Security Group: Must reference an existing security group.

- **Auto Scaling Group**:
  - Minimum Size: 1
  - Maximum Size: 5
  - Desired Capacity: Configurable via parameters.

## Bash Script Usage

To use the script, run the following command:

```bash
./script.sh -n awesome -s 3
```

### Parameters

- `-n`: Base name for the created artifacts (e.g., `awesome`).
- `-s`: Number of instances for the ASG (e.g., `3`).
- `-h`: Display help message.

### Example

To create an ASG named `awesome-ASG` with 3 instances:

## Requirements

- AWS CLI configured with appropriate permissions.
- Valid AMI ID for the Launch Template.
- Existing EC2 KeyPair and Security Group.

## License

This project is licensed under the MIT License.
