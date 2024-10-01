# linuxtips-curso-containers-ecs-service-modules
Repositório de módulo para a criação de service no ECS

# comandos publicar imagem no ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin ACCOUNT.dkr.ecr.us-east-1.amazonaws.com

docker tag fidelissauro/chip:latest ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest

docker push ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/linuxtips-ecs-cluster/chip:latest
