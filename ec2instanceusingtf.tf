provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIAV4MQPADKRUDN3WU5"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e0820ad173f20fbb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
