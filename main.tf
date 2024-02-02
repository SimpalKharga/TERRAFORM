module "MY_SSH_KEY" {
  source       = "./Modules/SSH_Key"
  SSH_KEY_NAME = var.P_SSH_KEY_NAME
  PUB_KEY      = file(var.P_PUB_KEY)
}

module "MY_SEC_GRP" {
  source     = "./Modules/SEC_GRP"
  SG_NAME    = var.P_SG_NAME
  HTTP_PORT  = var.P_HTTP_PORT
  CIDR_RANGE = [var.P_CIDR_RANGE]
}

module "MY_EC2" {
  source               = "./Modules/EC2"
  AMI_ID               = var.P_AMI_ID
  INS_TYPE             = var.P_INS_TYPE
  SSH_KEY_NAME         = module.MY_SSH_KEY.SSH_KEY_NAME_OUTPUT
  SECURITY_GROUP_NAMES = [module.MY_SEC_GRP.Security_grp_name_output]
  TAG_NAME             = "P_TAG_NAME"
}



#This is for Web server!!!


module "MY_WEB_SSH_KEY" {
  source       = "./Modules/SSH_Key"
  SSH_KEY_NAME = var.P_WEB_SSH_KEY_NAME
  PUB_KEY      = file(var.P_WEB_PUB_KEY)
}

module "MY_WEB_SEC_GRP" {
  source     = "./Modules/SEC_GRP"
  SG_NAME    = var.P_WEB_SG_NAME
  HTTP_PORT  = var.P_WEB_HTTP_PORT
  CIDR_RANGE = [var.P_WEB_CIDR_RANGE]
}

module "MY_WEB_EC2" {
  source               = "./Modules/EC2"
  AMI_ID               = var.P_WEB_AMI_ID
  INS_TYPE             = var.P_WEB_INS_TYPE
  SSH_KEY_NAME         = module.MY_WEB_SSH_KEY.SSH_KEY_NAME_OUTPUT
  SECURITY_GROUP_NAMES = [module.MY_WEB_SEC_GRP.Security_grp_name_output]
  TAG_NAME             = "P_WEB_TAG_NAME"
}


#This is for App server!!!


module "MY_APP_SSH_KEY" {
  source       = "./Modules/SSH_Key"
  SSH_KEY_NAME = var.P_APP_SSH_KEY_NAME
  PUB_KEY      = file(var.P_APP_PUB_KEY)
}

module "MY_APP_SEC_GRP" {
  source     = "./Modules/SEC_GRP"
  SG_NAME    = var.P_APP_SG_NAME
  HTTP_PORT  = var.P_APP_HTTP_PORT
  CIDR_RANGE = [var.P_APP_CIDR_RANGE]
}

module "MY_APP_EC2" {
  source               = "./Modules/EC2"
  AMI_ID               = var.P_APP_AMI_ID
  INS_TYPE             = var.P_APP_INS_TYPE
  SSH_KEY_NAME         = module.MY_APP_SSH_KEY.SSH_KEY_NAME_OUTPUT
  SECURITY_GROUP_NAMES = [module.MY_APP_SEC_GRP.Security_grp_name_output]
  TAG_NAME             = "P_APP_TAG_NAME"
}


