module "roboshop" {
  for_each = var.instances
  source = "./nodule"
  component_name = each.key
}

variable "instances" {
  default = {
    frontend = {}
    cart = {}
    catalogue = {}
    user = {}
    shipping = {}
    payment = {}
    mysql = {}
    mongodb = {}
    rabbitmq = {}
    redis = {}

  }
}