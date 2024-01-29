# terraform.tfvars

region             = "eu-west-1"
vpc_cidr           = "10.0.0.0/16"
vpc_name           = "kube-vpc"
subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones = ["eu-west-1a", "eu-west-1b"]
