output "cluster_name" {
  description = "ECSクラスターの名前"
  value       = aws_ecs_cluster.main.name
}

output "cluster_id" {
  description = "ECSクラスターのID"
  value       = aws_ecs_cluster.main.id
}

output "cluster_arn" {
  description = "ECSクラスターのARN"
  value       = aws_ecs_cluster.main.arn
}

output "vpc_id" {
  description = "作成されたVPCのID"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "作成されたサブネットのID一覧"
  value       = aws_subnet.public[*].id
}