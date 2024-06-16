variable "sample" {
  default = "welcome to terraform"
}

output "sample" {
  value = var.sample
}

variable "fruits" {
  default = ["apple","mango","banana"]
}

output "fruits" {
  value = var.fruits[0]
}