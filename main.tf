provider "aws" {
access_key = "acess key"
secret_key = "security key"
region = "us-west-2"
}


#we need to create a VPC resource
resource "aws_vpc" "ntiervpc2" {
    cidr_block = "192.168.0.0/24"
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        "Name" = "From TF"
    }

}

#let's create a subnet
resource "aws_subnet" "name" {
    #resource type.resource name.resource id
    vpc_id = aws_vpc.ntiervpc2.id
    cidr_block = "192.168.0.0/24"
    availability_zone = "us-west-2a"


}
