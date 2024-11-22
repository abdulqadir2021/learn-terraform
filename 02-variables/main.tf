variable "url" {
    default = "example.com"
}

## Access variable
output "URL" {
    value = var.URL
    }
# Variable is a combination of some other string. Then we have to use ${}
output "URL1" {
    value = "URL - ${var.URL}"
    }

# Data types
variable "num1" {
    default = 10
}

variable "bool1" {
    default = true
}

variable "strl" {
    default = "Hello"
}

# Numbers, Booleans, & Strings

# Variable types
variable "str2" {
    default = "World"
}

variable "list1" {
    default = [
        10,
        20,
        "xyz",
        false
    ]
}

# List can have a combination of multiple data types also.

variable "map1" {
  default = {
      aws = {
              trainer = "john"
              duration = 30
      }
      devops = {
              trainer = "Steve"
              duration = 20
      }
  }
}

output "list1_1" {
    value = var.list1[2]
}

output "map1_aws_trainer" {
    value = var.map1["aws"]["trainer"]
}


