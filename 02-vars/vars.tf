variable "sample" {
  default = "welcome to terraform"
}

output "sample" {
  value = var.sample
}

#List of variables
variable "fruits" {
  default = ["apple","mango","banana"]
}

output "fruits_with_firstfruit" {
  value = var.fruits[0]
}

#Map variables
variable "fruits_with_quantity" {
  default = {
    apple = 100,
    mango = 200,
    banana = 300
  }
}

output "fruits_apple_quantity" {
  value = var.fruits_with_quantity["apple"]
}