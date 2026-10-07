# resource "aws_instance" "terraform_demo" {
#     ami = "ami-0220d79f3f480ecf5"
#     instance_type = "t3.micro"
#     vpc_security_group_ids = [aws_security_group.allow_terraform.id] # list
#     # labels, metadata, info, etc
#     tags = {
#         Name = "terraform-demo-1"
#         Project = "roboshop"
#         Environment = "dev"
#     }
# }

  
resource "aws_instance" "terraform_demo" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  vpc_security_group_ids = [
    aws_security_group.allow_terraform.id
  ]

  tags = {
    Name        = "terraform-demo-1"
    Project     = "roboshop"
    Environment = "dev"
  }
}