#
# Global variables
#
variable "region" {

}

variable "service_sg_ingress_ports" {

}

#
# Network variables
#
variable "vpc_id" {

}

variable "private_subnets" {

}

#
# ECS variables
#
variable "container_image" {
  type        = string
  description = "imagem com tag para deployment da aplicação no ECS"
  default     = ""
}

variable "service_name" {

}

variable "cluster_name" {

}

variable "service_port" {

}

variable "service_cpu" {

}

variable "service_memory" {

}

variable "service_listener" {

}

variable "service_task_execution_role" {

}

variable "service_healthcheck" {

}

variable "service_launch_type" {
  description = "Configuração dos Launch Types pelos capacity providers disponíveis no cluster"
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
  default = [{
    capacity_provider = "SPOT"
    weight            = 100
  }]
}

variable "service_task_count" {

}

variable "service_hosts" {

}

#
# Task definition variables
#
variable "environment_variables" {
  type = list(object({
    name : string
    value : string
  }))
  description = "Lista de variáveis de ambiente que serão passadas para o serviço"
}

variable "secrets" {
  type = list(object({
    name : string
    valueFrom : string
  }))
  description = "Lista de secrets do parameter store ou do secrets manager"
}

variable "capabilities" {
  type = list(string)
}

#
# Task Auto Scaling
#
variable "scale_type" {
  default = null
}

variable "task_minimum" {
  default = 2
}

variable "task_maximum" {
  default = 5
}

#
# Task Auto Scaling CPU [OUT]
#

variable "scale_out_cpu_threshold" {
  default = 80
}

variable "scale_out_adjustment" {
  default = 1
}

variable "scale_out_comparison_operator" {
  default = "GreatherThanOrEqualToThreshold"
}

variable "scale_out_statistic" {
  default = "Average"
}

variable "scale_out_period" {
  default = 60
}

variable "scale_out_evaluation_periods" {
  default = 2
}

variable "scale_out_cooldown" {
  default = 60
}

#
# Task Auto Scaling CPU [IN]
#

variable "scale_in_cpu_threshold" {
  default = 30
}

variable "scale_in_adjustment" {
  default = -1
}

variable "scale_in_comparison_operator" {
  default = "LessThanEqualToThreshold"
}

variable "scale_in_statistic" {
  default = "Average"
}

variable "scale_in_period" {
  default = 120
}

variable "scale_in_evaluation_periods" {
  default = 3
}

variable "scale_in_cooldown" {
  default = 120
}

variable "scale_tracking_cpu" {
  default = 80
}

variable "alb_arn" {
  default = null
}

variable "scale_tracking_requests" {
  default = 0
}