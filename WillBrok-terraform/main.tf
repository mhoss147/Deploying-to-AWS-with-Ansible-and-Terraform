# Hello 19 august 2020

/*
Multi-line comment
*/

#Configure the AWS Provider

provider "aws" {
    version = "~> 2.69"
    access_key = "AKIA...RR7WSP"
    secret_key = "BP2Aw10x/...+ogFMZAsKk"
    region = "us-east-1"
}

#Create a VPC

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "moh_vpc"
  }
}

#Create a subnet

resource "aws_subnet" "main" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "moh_subnet"
  }
}


#Create a Instance 

resource "aws_instance" "foobar" {
    #ami = "ami-08f3d892de259504d"
    ami = "ami-098f16afa9edf40be"
    instance_type = "t2.medium"

    tags = {
    Name = "moh_instance"
  }

}

