provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIAV4MQPADKU2URMXVM"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e0820ad173f20fbb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
