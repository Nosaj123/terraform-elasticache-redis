variable "engine" {
  description = "Redis Engine Type"
  type        = string
  default     = "redis"
}


variable "engine_version" {
  description = "Redis Engine Version"
  type        = string
  default     = "7.0"
}

variable "node_type" {
  description = "Redis Engine Node Type"
  type        = string
  default     = "cache.t2.micro"
}

variable "number_cache_nodes" {
  description = "The number of cache nodes"
  type        = string
  default     = "1"
}

variable "port_number" {
  description = "Port for Elasticache"
  type        = string
  default     = "6379"
}

variable "paramter_family_name" {
  description = "Redis 7 Parameter Group Family Name"
  type        = string
  default     = "redis7-paramater-group"
}

variable "subnet_group" {
  description = "Subnet Groups"
  type        = list(string)
  default     =["subnet-26a35217", "subnet-1d8e2c7b", "subnet-22275a6f"]
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     ="vpc-22c13f5f"
}


variable "paramter_family" {
  description = "Redis 7 Parameter Group"
  type        = string
  default     = "redis7"
}


variable "paramter_policy" {
  description = "Parameter Policy"
  type        = string
  default     = "allkeys-lru"
}

variable "paramter_timeout" {
  description = "Timeout Seconds"
  type        = string
  default     = "180"
}

