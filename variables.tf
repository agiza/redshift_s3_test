variable "redshift_cluster_identifier" { 
description = "Custom name of the cluster"
}
variable "redshift_cluster_node_type" {
description = "Node Type of Redshift cluster"
}
variable "redshift_cluster_number_of_nodes" {
description = "Number of Node in the cluster"
}
variable "redshift_cluster_database_name" {
 description = "The name of the database to create"
}
variable "redshift_cluster_master_username" {}
variable "redshift_cluster_master_password" {}
variable "redshift_cluster_wlm_json_configuration" {
  default = "[{\"query_concurrency\": 5}]"
}
variable "public_subnets" {
  type = "list"
}
variable "vpc_id" {}
variable "vpc_cidr" {
  type = "list"
}
variable "redshift_bucketname" {}
variable "charge_code" {}
