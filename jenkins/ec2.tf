resource "aws_key_pair" "admin" {
   key_name   = "admin"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCt5R5LMOP4KB3jkSqA8ZQn3PmME7mLbioz1cjJ3tYoGqcnD6sfx8OyNbUDrXTTqVSpUgSs1V5bDK2Ukw6gZ028Z8EbiUHDEcO8xSSDVVQQA7dP5Ejt2UqAMmeb4ClX2ydmwOt05bX+RVaY2pWlb74omGxrm5YmRqeVaw3iD6OyZNGnCYJvl5XJfSqie1VGmQ7ASmH4VgokONGWAY9QGEXJo3BFP0S4yvAdECx0rY2QVQ+0IyHsGr2j3cBwydnUzi6LC+l4NRoTmVBQWXbyyI6gw9BJfhDawuACx/VE60cp3EGBvNslGx/BmhSr38ccr8LhyeW1AeE9Mt4qmRazSMwl vagrant@localhost.localdomain"
 }

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01" {
    ami = "ami-0c6ebbd55ab05f070"
    instance_type = "t2.micro"
    key_name = "admin"

    tags = {
        Name = "${var.name}"
    }
}
