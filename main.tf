
provider "aws" {
  region  = "eu-central-1"
    profile= "illa-terraform"
}

resource "aws_instance" "first_tf_machine" {
  ami = "ami-10900f7f"
  instance_type = "t2.micro"
  provisioner "local-exec" {
      command = "echo ${aws_instance.first_tf_machine.public_ip} > file.txt"
  }

}


