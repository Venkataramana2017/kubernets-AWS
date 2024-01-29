# main.tf

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidrs)

  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${var.vpc_name}-subnet-${count.index + 1}"
  }
}

# You can add more resources like route tables, internet gateways, etc., as needed.
