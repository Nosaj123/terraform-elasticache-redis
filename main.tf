resource "aws_elasticache_cluster" "redis" {
  cluster_id               = "redis-cluster"
  engine                   = var.engine
  engine_version           = var.engine_version
  node_type                = var.node_type
  num_cache_nodes          = var.number_cache_nodes
  port                     = var.port_number
  parameter_group_name     = aws_elasticache_parameter_group.redis7.name
  subnet_group_name        = aws_elasticache_subnet_group.redis.name
  security_group_ids       = [aws_security_group.redis.id]
  
  tags = {
    Name = "redis-cluster"
  }
}

resource "aws_elasticache_parameter_group" "redis7" {
  name        = var.paramter_family_name
  family      = var.paramter_family

  parameter {
    name  = "maxmemory-policy"
    value = var.paramter_policy
  }

  parameter {
    name  = "timeout"
    value = var.paramter_timeout
  }
}

resource "aws_vpc" "redis" {
cidr_block = "172.31.0.0/16"

  tags = {
    Name = "redis-vpc"
  }
}

resource "aws_subnet" "redis" {
  #vpc_id  = "vpc-22c13f5f"
  #count       = 2
  #cidr_block  = cidrsubnet(aws_vpc.redis.cidr_block, 8, count.index)
  
  #availability_zone = "us-east-1a"
  cidr_block = "0.0.0.0/0" 
  vpc_id      = aws_vpc.redis.id
  

}

resource "aws_elasticache_subnet_group" "redis" {
  name        = "redis-subnet-group"
  subnet_ids = [aws_subnet.redis.id]

}

resource "aws_security_group" "redis" {
  name = "redis-security-group"
  vpc_id  = "vpc-22c13f5f"
  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "redis-security-group"
  }
}

