resource "aws_appautoscaling_target" "main" {
  min_capacity       = var.task_minimum
  max_capacity       = var.task_maximum
  resource_id        = "service/${var.cluster_name}/${aws_ecs_service.main.name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"
}

