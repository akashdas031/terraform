provider "aws" {
  region     = "ap-northeast-1"
  access_key = "AKIAV4MQPADKXW2ALAPR"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e0820ad173f20fbb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
