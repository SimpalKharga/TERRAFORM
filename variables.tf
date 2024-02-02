#this is for SSH key

variable "P_SSH_KEY_NAME" {
  type = string
}

variable "P_PUB_KEY" {
  type = string
}

#This is for security group 

variable "P_SG_NAME" {
  type = string
}

variable "P_HTTP_PORT" {
  type = string
}


variable "P_CIDR_RANGE" {
  type = list(any)
}

#This is for EC2 

variable "P_AMI_ID" {
  type = string
}

variable "P_INS_TYPE" {
  type = string
}

variable "P_TAG_NAME" {
  type = string
}

#for Web Server ssh-key!!!


variable "P_WEB_SSH_KEY_NAME" {
  type = string
}

variable "P_WEB_PUB_KEY" {
  type = string
}

#for Web Server security group!!!

variable "P_WEB_SG_NAME" {
  type = string
}

variable "P_WEB_HTTP_PORT" {
  type = string
}

variable "P_WEB_CIDR_RANGE" {
  type = list(any)
}

#this for ec2 instance!!!

variable "P_WEB_AMI_ID" {
  type = string
}

variable "P_WEB_INS_TYPE" {
  type = string
}

variable "P_WEB_TAG_NAME" {
  type = string
}


#This is for App server ssh-key!!!

variable "P_APP_SSH_KEY_NAME" {
  type = string
}

variable "P_APP_PUB_KEY" {
  type = string
}

#This is for security group

variable "P_APP_SG_NAME" {
  type = string
}


variable "P_APP_HTTP_PORT" {
  type = string
}


variable "P_APP_CIDR_RANGE" {
  type = list(any)
}

#this is fro app EC2!!!

variable "P_APP_AMI_ID" {
  type = string
}

variable "P_APP_INS_TYPE" {
  type = string
}


variable "P_APP_TAG_NAME" {
  type = string
}

 