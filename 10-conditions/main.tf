output "test"{
  value = var.x == 2 ? "Yes it is equal" : "No, those are not equal"
}

variable "x" {
  default = 2
}
