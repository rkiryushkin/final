resource "aws_instance" "linux-instance" {
  ami           = "ami-009b16df9fcaac611"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.final-subnet-public-3.id

  vpc_security_group_ids = [aws_security_group.final-all.id]

  key_name = "Lesson6"
  
  tags = {
    "Name" = "linux-instance"
  }
}