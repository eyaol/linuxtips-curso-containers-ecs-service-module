variable "service_name" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

variable "service_port" {
  type = number
}

variable "service_cpu" {
  type = number
}

variable "service_memory" {
  type = number
}

variable "service_listener" {
  type = string
}