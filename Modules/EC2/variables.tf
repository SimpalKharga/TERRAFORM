variable "AMI_ID" {
  type = string
}

variable "INS_TYPE" {
  type = string
}

variable "TAG_NAME" {
  type = string
}


variable "SSH_KEY_NAME" {
  type = string
}


variable "SECURITY_GROUP_NAMES" {
  type = list(any)
}
