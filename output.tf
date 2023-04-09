output "engine" {
  value = aws_elasticache_cluster.redis.engine
}

output "engine_version" {
  value = aws_elasticache_cluster.redis.engine_version
}

output "node_type" {
  value = aws_elasticache_cluster.redis.node_type
}

output "num_cache_nodes" {
  value = aws_elasticache_cluster.redis.num_cache_nodes
}

output "port" {
  value = aws_elasticache_cluster.redis.port
}

output "security_group" {
  value = aws_security_group.redis.name
}

output "security_group_id" {
  value = aws_security_group.redis.id
}

output "subnet_group_name" {
  value = aws_elasticache_subnet_group.redis.name
}

output "subnet_group_ids" {
  value = aws_elasticache_subnet_group.redis.subnet_ids
}



output "redis_endpoint" {
  value = aws_elasticache_cluster.redis.cache_nodes[0].address
}