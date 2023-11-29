resource "aws_instance" "example_instance" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["ssh-virginia-sg", "http-virginia-sg"]
  key_name               = "ramiro-virginia"

  tags = {
    Owner = "Ramiro"
    Name  = "ramiro-test-instance"
  }
}
