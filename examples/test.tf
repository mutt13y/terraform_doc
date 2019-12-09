#=OUTLINE= My terraform module
#= this is a brilliant module
#= please use it
#==

variable "dns_zone_name" {
  description = "Parent domain name to use"
  type        = string
}

variable "complex_var" {
  description = "this is a complicated type"
  type = list(object({
    name             = string
    source_cidrs     = list(string)
    destination_fqdn = string
    destination_port = number
    service          = string
    application      = string
  }))
  #= source_cidrs
  #= some text about the var
  #=
  #= extra line
}


variable "how_many" {
  description = "variable with a default"
  type        = number
  default     = 5
}


output "ami" {
  value = data.aws_ami.my_ami.id
  #= The ami to use
}

output "urls" {
  value = [for x in aws_eip.management[*].public_ip : "https://${x}"]
  #= Complex output
}

#=SECTION= EXAMPLES
#= here are some examples
#= ```
#= code
#= code
#= ```
#==

#=FOOTER= NOTES
#= 1. just a sample module
#= 2. won't do anything
#==

#= ### Unclassified text
#= stuff not in a block
