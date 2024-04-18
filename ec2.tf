resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI ID, change according to the region and your needs
  instance_type = "t2.micro"  # Change this according to your needs

  tags = {
    Name = "ExampleInstance"
  }
}