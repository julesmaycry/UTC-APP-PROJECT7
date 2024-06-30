resource "aws_instance" "server1" {
    ami = "ami-0eaf7c3456e7b5b68"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public1.id
    security_groups = [ aws_security_group.sg-demo.name ]
    key_name = aws_key_pair.aws_key.key_name
    user_data = file("script.sh")
    tags = {
      key_name = "utc-app-inst"
    }

  
}