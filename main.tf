provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "WebServer"
  }
}

resource "aws_elastic_ip" "eip" {
  instance = aws_instance.web.id
}

output "public_ip" {
  value = aws_elastic_ip.eip.public_ip
}
