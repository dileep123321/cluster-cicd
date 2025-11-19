variable "network_name" {
  type    = string
  default = "kxnwork-cheap-vpc"
}

variable "subnet_name" {
  type    = string
  default = "kxnwork-private-subnet"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "cluster_name" {
  type    = string
  default = "kxnwork-private-gke"
}
