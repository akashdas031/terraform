provider "aws" {
  region     = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-099b3d23e336c2e83"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
