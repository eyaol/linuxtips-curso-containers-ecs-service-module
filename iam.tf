#
# Create service execution role 
#
resource "aws_iam_role" "service_execution_role" {
  name = format("%s-%s-service-role", var.cluster_name, var.service_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      },
    ]
  })
}

#
# Create policy for service execution role
#
resource "aws_iam_role_policy" "service_execution_role" {
  name = format("%s-%s-service-policy", var.cluster_name, var.service_name)
  role = aws_iam_role.service_execution_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
          "elasticloadbalancing:DeregisterTargets",
          "elasticloadbalancing:Describe*",
          "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
          "elasticloadbalancing:RegisterTargets",
          "ec2:Describe*",
          "ec2:AuthorizeSecurityGroupIngress"
        ],
        Resource = "*",
        Effect   = "Allow"
      },
    ]
  })
}