variable "sample" {
  default = "welcome to terraform"
}

output "sample" {
  value = var.sample
}