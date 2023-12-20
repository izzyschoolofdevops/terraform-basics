# declaring an empty variable

variable "batch"{
     default = "batch56"
}

#printing a variable

output "batch-op"{
    value = var.batch
}