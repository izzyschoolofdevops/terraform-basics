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

output"example_List_op"{
  value = "welcome to ${var.example_List[0]} with ${var.example_List[1]} training by and ${var.example_List[3]}"
}

#declaring a map variable

variable "training_map"{
    default = {
        batch    = "b56"
        mode     = "online"
        training  ="devopswithaws"

    }

}

#printing a map variable

output "training_map_op"{
   value ="${var.training_map["training"]} has a great scope of opportunity and is complete ${var.training_map["mode"]} and this is our batch56 ${var.training_map["batch"]}"
   }
   #in reality we write the code very generic and values would be from the external file based on the environment 
   # we can declare variables in a variable file that would be picked up by TF and the variables file should always ends with .tfvars.check"
   ## terraform.tfvars is the default file that would be picked

   variable "city" {}

   output "city_name"{
      value = var.city
   }