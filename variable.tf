#THIS IS FOR EC2

variable  "INST_TYPE" {
    type = string
}   

variable  "EC2_TAG" {
    type = string
}   

variable "sg_ports" {
   type   = list(any)
   description = "list of ingress ports"
}
   
#THIS IS FOR SECURITY GROUP

variable  "SG_NAME" {
    type = string
    description = "Ingress for Vault"
}  