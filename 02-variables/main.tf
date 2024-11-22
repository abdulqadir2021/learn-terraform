variable "url" {
    default = "example.com"
}

## Access variable
output "URL" {
    value = var.URL
}

# variable is a combination of some other string. Then we have to use ${}
output "URL2" {
    value = "URL2 - ${var.URL}"
}