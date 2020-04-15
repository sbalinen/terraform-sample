variable "region" {
	description = "Region in which VPC should be deployed"
	default = "us-west-2"
}

variable "cidr" {
	description = "IP Range to be assigned to this VPC"
}

variable "vpcname" {
	description = "Name of the VPC to be created"
}

variable "private_subnets" {
	type = list
	description = "List of private subnets to be created"
}

variable "zones" {
	type = list(string)
	description = "List of zones subnets needs to be created"
}
