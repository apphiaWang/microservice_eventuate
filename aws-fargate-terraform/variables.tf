variable "region" {
  default = "us-west-2"
}

variable "access_key" {
  default = "AKIAYRU7ZTX66ATJCY5A"
}

variable "secret_key" {
  default = "/fAFoa+IYy/Rj2QFalp3GNAoNUEvFR9kA+W3XTHr"
}

variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "vpcCIDRblock" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr3" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.0.0/24"
}

variable "public_subnet_cidr1" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.3.0/24"
}

variable "public_subnet_cidr2" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.2.0/24"
}

variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}

variable "mapPublicIP" {
  default = true
}

variable "az1" {
  default = "us-west-2a"
}

variable "az2" {
  default = "us-west-2b"
}

variable "az3" {
  default = "us-west-2c"
}

variable "rds_username" {
  default = "admin"
}

variable "rds_pwd" {
  default = "Eventuate123"
}

variable "ingress_cidr" {
  default = [
    "0.0.0.0/0",
  ]

  type = list(any)
}

variable "prefix" {
  default = "dev"
}

variable "docdb_username" {
  default = "eventuateadmin"
}

variable "git_pat" {
  default="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"
}

variable "git_username" {
  default = "apphiaWang"
}

variable "enable_codepipeline" {
  type    = string
  default = "false"
}

variable "docker_hub_image_prefix" {
  type    = string
  default = "eventuateexamples/eventuate-tram-examples-customers-and-orders-"
}
