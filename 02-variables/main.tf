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

