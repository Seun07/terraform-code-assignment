output "ec2_public1_ip" {
  value = aws_instance.jenkinsapp-server
}

output "ec2_public2_ip" {
  value = aws_instance.apacheapp
}

output "ec2_public3_ip" {
  value = aws_instance.nginxapp
}
