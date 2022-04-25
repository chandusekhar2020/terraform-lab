resource "aws_instance" "ec2-lab" {
  ami = data.aws_ami.amazonlinux.id
  instance_type = var.instance_type
  key_name   = var.key_name
  availability_zone = "ap-south-1b"
  tags = {
    env = "dev"
    purpose = "testing"
    Name = "ec2-lab"
    owner = "Chandu"
    }
}
resource "aws_eip" "lb" {
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2-lab.id
  allocation_id = aws_eip.lb.id
}







