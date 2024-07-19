variable "count" {
    description = "number of instances"
    type = integer
    default = 1
}

variable "ami_id" {
    description = "ami id of instance"
    type = string
    default = ""
}

variable "instance_type" {
    description = "type of instance"
    type = string
    default = ""
}

variable "key_name" {
    description = "key for instance"
    type = string
    default = ""
}

variable "name" {
    description = "name of instance"
    type = string
    default = "test-instance"
}

variable "vpc_security_group_ids" {
    description = "security group ids"
    type = string
    default = ""  
}