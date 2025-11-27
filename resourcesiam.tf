resource "aws_iam_user" "cloud" {
  name = "cloud-user"
}

resource "aws_instance" "web-server" {
  ami           = "ami-03978d951b279ec0b"  # This Ami is for Mumbai region- "ap-south-1"Make sure to use the correct AMI for the specific region.
  instance_type = "t3.micro"

  tags = {
    Name = "web-server"
}
}



