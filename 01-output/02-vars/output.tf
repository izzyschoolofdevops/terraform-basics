# declaring an empty variable

variable "batch"{
     default = "batch56"
}

#printing a variable

output "batch-op"{
    value = var.batch
}

# when to enclose values in quotes and when to use $ notations for a variable
#whnever your variable is enclosed in a set of strings or in between a sentence, tehn we enclose them in a styrings and with bash notation

output "batch_number"{
    value = "current batch is ${var.batch}"
}
variable "numerical" {
    default = 100
}

output "numerical_op"{
    value = var.numerical
}
# declaring a list variable !!! A key with multiple values is referred as List
variable "example_List" {
    default = [
        "Devops",
        "AWS_Cloud",
        "false",
        "Izzy",
        56

    ]
}
#Printing a List Variable

output"example_list_op"{
  value = "welcome to ${var.example_list[0]} with ${var.example_list[1]} training by and ${var.example_list[3]}"
}