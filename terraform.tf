terraform {
  required_providers {
    aws =  {
    source = "hashicorp/aws"
    version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "terraform_backend_bucket" {
      bucket = "terraform-state-jqk5om91yiy9s9n3y6lz4pmg6sp63f7ye4u7kvoqur8ji"
}

resource "aws_instance" "Instance-UkVW-a" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.xlarge"
      lifecycle {
        ignore_changes = [ami]
      }
      subnet_id = aws_subnet.devxp_vpc_subnet_public0.id
      associate_public_ip_address = true
      vpc_security_group_ids = [aws_security_group.devxp_security_group.id]
      iam_instance_profile = aws_iam_instance_profile.Instance-UkVW-a_iam_role_instance_profile.name
}

resource "aws_eip" "Instance-UkVW-a_eip" {
      instance = aws_instance.Instance-UkVW-a.id
      vpc = true
}

resource "aws_iam_user" "Instance-UkVW-a_iam" {
      name = "Instance-UkVW-a_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-UkVW-a_iam_policy_attachment0" {
      user = aws_iam_user.Instance-UkVW-a_iam.name
      policy_arn = aws_iam_policy.Instance-UkVW-a_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-UkVW-a_iam_policy0" {
      name = "Instance-UkVW-a_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-UkVW-a_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-UkVW-a_iam_access_key" {
      user = aws_iam_user.Instance-UkVW-a_iam.name
}

resource "aws_instance" "Instance-UkVW-b" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.xlarge"
      lifecycle {
        ignore_changes = [ami]
      }
      subnet_id = aws_subnet.devxp_vpc_subnet_public0.id
      associate_public_ip_address = true
      vpc_security_group_ids = [aws_security_group.devxp_security_group.id]
      iam_instance_profile = aws_iam_instance_profile.Instance-UkVW-b_iam_role_instance_profile.name
}

resource "aws_eip" "Instance-UkVW-b_eip" {
      instance = aws_instance.Instance-UkVW-b.id
      vpc = true
}

resource "aws_iam_user" "Instance-UkVW-b_iam" {
      name = "Instance-UkVW-b_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-UkVW-b_iam_policy_attachment0" {
      user = aws_iam_user.Instance-UkVW-b_iam.name
      policy_arn = aws_iam_policy.Instance-UkVW-b_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-UkVW-b_iam_policy0" {
      name = "Instance-UkVW-b_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-UkVW-b_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-UkVW-b_iam_access_key" {
      user = aws_iam_user.Instance-UkVW-b_iam.name
}

resource "aws_s3_bucket" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a" {
      bucket = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a"
}

resource "aws_s3_bucket_public_access_block" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_access" {
      bucket = aws_s3_bucket.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a.id
      block_public_acls = true
      block_public_policy = true
}

resource "aws_iam_user" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam" {
      name = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam"
}

resource "aws_iam_user_policy_attachment" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy_attachment0" {
      user = aws_iam_user.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam.name
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0.arn
}

resource "aws_iam_policy" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0" {
      name = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy_document.json
}

resource "aws_iam_access_key" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_access_key" {
      user = aws_iam_user.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam.name
}

resource "aws_s3_bucket" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b" {
      bucket = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b"
}

resource "aws_s3_bucket_public_access_block" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_access" {
      bucket = aws_s3_bucket.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b.id
      block_public_acls = true
      block_public_policy = true
}

resource "aws_iam_user" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam" {
      name = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam"
}

resource "aws_iam_user_policy_attachment" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy_attachment0" {
      user = aws_iam_user.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam.name
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0.arn
}

resource "aws_iam_policy" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0" {
      name = "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy_document.json
}

resource "aws_iam_access_key" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_access_key" {
      user = aws_iam_user.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam.name
}

resource "aws_sns_topic" "glacierpatrick_sns_topic" {
      name = "glacierpatrick_sns_topic"
}

resource "aws_glacier_vault" "glacierpatrick" {
      name = "glacierpatrick"
      notification {
        sns_topic = aws_sns_topic.glacierpatrick_sns_topic.arn
        events = ["ArchiveRetrievalCompleted", "InventoryRetrievalCompleted"]
      }
}

resource "aws_iam_user" "glacierpatrick_iam" {
      name = "glacierpatrick_iam"
}

resource "aws_iam_user_policy_attachment" "glacierpatrick_iam_policy_attachment0" {
      user = aws_iam_user.glacierpatrick_iam.name
      policy_arn = aws_iam_policy.glacierpatrick_iam_policy0.arn
}

resource "aws_iam_policy" "glacierpatrick_iam_policy0" {
      name = "glacierpatrick_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.glacierpatrick_iam_policy_document.json
}

resource "aws_iam_access_key" "glacierpatrick_iam_access_key" {
      user = aws_iam_user.glacierpatrick_iam.name
}

resource "aws_dynamodb_table" "testdynamodb-a" {
      name = "testdynamodb-a"
      hash_key = "testone"
      billing_mode = "PAY_PER_REQUEST"
      ttl {
        attribute_name = "TimeToExist"
        enabled = true
      }
      attribute {
        name = "testone"
        type = "S"
      }
      attribute {
        name = "testtwo"
        type = "B"
      }
}

resource "aws_iam_user" "testdynamodb-a_iam" {
      name = "testdynamodb-a_iam"
}

resource "aws_iam_user_policy_attachment" "testdynamodb-a_iam_policy_attachment0" {
      user = aws_iam_user.testdynamodb-a_iam.name
      policy_arn = aws_iam_policy.testdynamodb-a_iam_policy0.arn
}

resource "aws_iam_policy" "testdynamodb-a_iam_policy0" {
      name = "testdynamodb-a_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.testdynamodb-a_iam_policy_document.json
}

resource "aws_iam_access_key" "testdynamodb-a_iam_access_key" {
      user = aws_iam_user.testdynamodb-a_iam.name
}

resource "aws_dynamodb_table" "testdynamodb-b" {
      name = "testdynamodb-b"
      hash_key = "testone"
      billing_mode = "PAY_PER_REQUEST"
      ttl {
        attribute_name = "TimeToExist"
        enabled = true
      }
      attribute {
        name = "testone"
        type = "S"
      }
      attribute {
        name = "testtwo"
        type = "B"
      }
}

resource "aws_iam_user" "testdynamodb-b_iam" {
      name = "testdynamodb-b_iam"
}

resource "aws_iam_user_policy_attachment" "testdynamodb-b_iam_policy_attachment0" {
      user = aws_iam_user.testdynamodb-b_iam.name
      policy_arn = aws_iam_policy.testdynamodb-b_iam_policy0.arn
}

resource "aws_iam_policy" "testdynamodb-b_iam_policy0" {
      name = "testdynamodb-b_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.testdynamodb-b_iam_policy_document.json
}

resource "aws_iam_access_key" "testdynamodb-b_iam_access_key" {
      user = aws_iam_user.testdynamodb-b_iam.name
}

resource "aws_iam_instance_profile" "Instance-UkVW-a_iam_role_instance_profile" {
      name = "Instance-UkVW-a_iam_role_instance_profile"
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_instance_profile" "Instance-UkVW-b_iam_role_instance_profile" {
      name = "Instance-UkVW-b_iam_role_instance_profile"
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_iam_role" "Instance-UkVW-a_iam_role" {
      name = "Instance-UkVW-a_iam_role"
      assume_role_policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Action\": \"sts:AssumeRole\",\n      \"Principal\": {\n        \"Service\": \"ec2.amazonaws.com\"\n      },\n      \"Effect\": \"Allow\",\n      \"Sid\": \"\"\n    }\n  ]\n}"
}

resource "aws_iam_role" "Instance-UkVW-b_iam_role" {
      name = "Instance-UkVW-b_iam_role"
      assume_role_policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Action\": \"sts:AssumeRole\",\n      \"Principal\": {\n        \"Service\": \"ec2.amazonaws.com\"\n      },\n      \"Effect\": \"Allow\",\n      \"Sid\": \"\"\n    }\n  ]\n}"
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-a_iam_role_Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-b_iam_role_Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-a_iam_role_Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-b_iam_role_Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-a_iam_role_glacierpatrick_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.glacierpatrick_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-b_iam_role_glacierpatrick_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.glacierpatrick_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-a_iam_role_testdynamodb-a_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.testdynamodb-a_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-b_iam_role_testdynamodb-a_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.testdynamodb-a_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-a_iam_role_testdynamodb-b_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.testdynamodb-b_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-a_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UkVW-b_iam_role_testdynamodb-b_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.testdynamodb-b_iam_policy0.arn
      role = aws_iam_role.Instance-UkVW-b_iam_role.name
}

resource "aws_subnet" "devxp_vpc_subnet_public0" {
      vpc_id = aws_vpc.devxp_vpc.id
      cidr_block = "10.0.0.0/25"
      map_public_ip_on_launch = true
      availability_zone = "us-west-2a"
}

resource "aws_subnet" "devxp_vpc_subnet_public1" {
      vpc_id = aws_vpc.devxp_vpc.id
      cidr_block = "10.0.128.0/25"
      map_public_ip_on_launch = true
      availability_zone = "us-west-2b"
}

resource "aws_internet_gateway" "devxp_vpc_internetgateway" {
      vpc_id = aws_vpc.devxp_vpc.id
}

resource "aws_route_table" "devxp_vpc_routetable_pub" {
      route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.devxp_vpc_internetgateway.id
      }
      vpc_id = aws_vpc.devxp_vpc.id
}

resource "aws_route" "devxp_vpc_internet_route" {
      route_table_id = aws_route_table.devxp_vpc_routetable_pub.id
      destination_cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.devxp_vpc_internetgateway.id
}

resource "aws_route_table_association" "devxp_vpc_subnet_public_assoc" {
      subnet_id = aws_subnet.devxp_vpc_subnet_public0.id
      route_table_id = aws_route_table.devxp_vpc_routetable_pub.id
}

resource "aws_vpc" "devxp_vpc" {
      cidr_block = "10.0.0.0/16"
      enable_dns_support = true
      enable_dns_hostnames = true
}

resource "aws_security_group" "devxp_security_group" {
      vpc_id = aws_vpc.devxp_vpc.id
      name = "devxp_security_group"
      ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
      egress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
}

data "aws_iam_policy_document" "Instance-UkVW-a_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-UkVW-a.arn]
      }
}

data "aws_ami" "ubuntu_latest" {
      most_recent = true
      owners = ["099720109477"]
      filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*"]
      }
      filter {
        name = "virtualization-type"
        values = ["hvm"]
      }
}

data "aws_iam_policy_document" "Instance-UkVW-b_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-UkVW-b.arn]
      }
}

data "aws_iam_policy_document" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a_iam_policy_document" {
      statement {
        actions = ["s3:ListAllMyBuckets"]
        effect = "Allow"
        resources = ["arn:aws:s3:::*"]
      }
      statement {
        actions = ["s3:*"]
        effect = "Allow"
        resources = [aws_s3_bucket.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-a.arn]
      }
}

data "aws_iam_policy_document" "Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b_iam_policy_document" {
      statement {
        actions = ["s3:ListAllMyBuckets"]
        effect = "Allow"
        resources = ["arn:aws:s3:::*"]
      }
      statement {
        actions = ["s3:*"]
        effect = "Allow"
        resources = [aws_s3_bucket.Bucket-sOJz-wyjp-HTvl-otVf-tQzS-b.arn]
      }
}

data "aws_iam_policy_document" "glacierpatrick_iam_policy_document" {
      statement {
        actions = ["glacier:InitiateJob", "glacier:GetJobOutput", "glacier:UploadArchive", "glacier:InitiateMultipartUpload", "glacier:AbortMultipartUpload", "glacier:CompleteMultipartUpload", "glacier:DescribeVault"]
        effect = "Allow"
        resources = [aws_glacier_vault.glacierpatrick.arn]
      }
      statement {
        actions = ["glacier:ListVaults"]
        effect = "Allow"
        resources = ["*"]
      }
}

data "aws_iam_policy_document" "testdynamodb-a_iam_policy_document" {
      statement {
        actions = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGet*", "dynamodb:DescribeStream", "dynamodb:DescribeTable", "dynamodb:Get*", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchWrite*", "dynamodb:CreateTable", "dynamodb:Delete*", "dynamodb:Update*", "dynamodb:PutItem"]
        effect = "Allow"
        resources = [aws_dynamodb_table.testdynamodb-a.arn]
      }
      statement {
        actions = ["dynamodb:List*", "dynamodb:DescribeReservedCapacity*", "dynamodb:DescribeLimits", "dynamodb:DescribeTimeToLive"]
        effect = "Allow"
        resources = ["*"]
      }
}

data "aws_iam_policy_document" "testdynamodb-b_iam_policy_document" {
      statement {
        actions = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGet*", "dynamodb:DescribeStream", "dynamodb:DescribeTable", "dynamodb:Get*", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchWrite*", "dynamodb:CreateTable", "dynamodb:Delete*", "dynamodb:Update*", "dynamodb:PutItem"]
        effect = "Allow"
        resources = [aws_dynamodb_table.testdynamodb-b.arn]
      }
      statement {
        actions = ["dynamodb:List*", "dynamodb:DescribeReservedCapacity*", "dynamodb:DescribeLimits", "dynamodb:DescribeTimeToLive"]
        effect = "Allow"
        resources = ["*"]
      }
}

