resource "aws_instance" "jenkinsapp-server" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "blue"
  subnet_id                   = aws_subnet.myapp-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins.sh")
  tags = {
    Name = "${var.env_prefix}-jenkins"
  }
}

resource "aws_instance" "apacheapp" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "blue"
  subnet_id                   = aws_subnet.myapp-subnet-2.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("apache.sh")
  tags = {
    Name = "${var.env_prefix}-apache"
  }
}

resource "aws_instance" "nginxapp" {
  #ami                         = data.aws_ami.latest-amazon-linux-image.id
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = "blue"
  subnet_id                   = aws_subnet.myapp-subnet-3.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("nginx.sh")
  tags = {
    Name = "${var.env_prefix}-nginx"
  }
}