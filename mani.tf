provider "aws" {
        access_key = "your_access_key"
        secret_key = "your_secret_key"
        region = "ap-south-1"
}

resource "aws_instance" "terroformresourc" {
        ami = "ami-04a37924ffe27da53"
        instance_type = "t2.micro"
        tags={
                Name = " terroformOS"
                TerraTeam = "Dev"
        }
}

output "result"{
        value = aws_instance.terroformresourc.ami
        }
