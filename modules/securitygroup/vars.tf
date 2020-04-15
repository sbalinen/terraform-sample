variable "sg_name" {
	description = "Name of the Security Group"
	type = string
}

variable "vpc_id" {
	description = "ID Of the VPC to which this SG should be attached"
}

variable "ingress_cidr_blocks" {
	description = "List of destination IP's to which this rule will be applied"
}

variable "from_port" {
	description = "Source port of the client"
}

variable "to_port" {
	description = "Destination port to which the rule should be applied"
}

variable "protocol" {
	description = "Protcol for the incoming traffic"
	default = "tcp"
}
