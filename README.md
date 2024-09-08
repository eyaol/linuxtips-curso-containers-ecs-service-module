# linuxtips-curso-containers-ecs-service-modules
Repositório de módulo para a criação de service no ECS

# comandos terraform usados
terraform init -backend-config=environment/dev/backend.tfvars

terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars

terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars