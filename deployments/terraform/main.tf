provider "aws" {}
resource "aws_instance" "jenkins" {
  ami           = "${aws_ami_ids}"
  instance_type = "t2.micro"
  tags = {
    Name = "${aws_instance}"
  }
}

aws_ami_ids = "ami-08f3d892de259504d"
aws_instance = "Jenkins"