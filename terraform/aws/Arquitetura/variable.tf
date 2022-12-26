#https://developer.hashicorp.com/terraform/language/values/variables


variable "nome_de_uma_variavel" {

    type = "tipo de variavel . string, number, bool,etc."
    default = "essa configuracao coloca um valor padrao caso ela nao tenha sido inserida " 
  
}





#https://developer.hashicorp.com/terraform/language/values

# INPUT VARIAVEL 
variable "image_id" {
  type = string
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}



