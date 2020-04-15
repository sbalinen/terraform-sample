# VPC

resource "aws_vpc" "example" {
  cidr_block = var.cidr
  
  tags = {
    Name = "${var.vpcname}"
  }
}

resource "aws_subnet" "private" {
  count = "${length(var.private_subnets)}"

  vpc_id            = "${aws_vpc.example.id}"
  cidr_block        = "${var.private_subnets[count.index]}"
  availability_zone = "${element(var.zones, count.index)}"

}

output "vpc_id" {
	value = "aws_vpc.example.id"
}
