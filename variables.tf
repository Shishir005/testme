variable "access_key" {
     default = "AKIAQFC2DCEPJ4PWMK7H"
}
variable "secret_key" {
     default = "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"
}
variable "region" {
     default = "us-east-1"
}


variable "aws_region" {
	default = "us-east-1"
}

variable "vpc_cidr" {
	default = "24.8.0.0/16"
}

variable "subnets_cidr" {
	type = "list"
	default = ["24.8.10.0/24", "24.8.20.0/24"]
}

variable "azs" {
	type = "list"
	default = ["us-east-1a", "us-east-1b"]
}




variable "availabilityZone" {
     default = "us-east-1a"
}
variable "instanceTenancy" {
    default = "default"
}
variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}
variable "vpcCIDRblock" {
    default = "10.0.0.0/16"
}
variable "subnetCIDRblock" {
    default = "10.0.1.0/24"
}
variable "destinationCIDRblock" {
    default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
    type = "list"
    default = ["0.0.0.0/0"]
}
variable "egressCIDRblock" {
    type = "list"
    default = ["0.0.0.0/0"]
}
variable "mapPublicIP" {
    default = true
}