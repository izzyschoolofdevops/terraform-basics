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