resource "aws_instance" "ec2-lab" {
  ami = data.aws_ami.amazonlinux.id
  instance_type = var.instance_type
  key_name   = var.key_name
  availability_zone = "ap-south-1a"
  tags = {
    env = "dev"
    purpose = "testing"
    Name = "ec2-lab"
    owner = "Chandu"
    }
    provisioner "file" {
      source = "install.sh"
      destination = "/tmp/install.sh"
      connection {
        type = "ssh"
        user = "ec2-user"
        password = ""
        host = self.public_ip
        #host = aws_eip.lb.public_ip
        private_key = file("private-key/terraformkeypair.pem")
      }
    }
}
resource "aws_eip" "lb" {
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2-lab.id
  allocation_id = aws_eip.lb.id
}







