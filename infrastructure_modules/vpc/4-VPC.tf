resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "${var.project_name}-terraform-vpc-${var.vpc_name}"
  }
}

