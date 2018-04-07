# Redshift Cluster with S3 bucket
Create a terraform module that creates the following resources:
- An S3 bucket with private default acl
- A redshift cluster with IAM role that allows read/write access to the bucket

# Input parameters:
- Number of nodes
- Node type/size
- Name of bucket/cluster
- Charge Code tag to be applied to all resources

# Outputs:
- Redshift endpoint
- S3 bucket ARN

## Module for Redshift_s3_test

module "redshift_s3_test" {

  source = "https://github.com/anvrao5/redshift_s3_test.git"
  
  redshift_cluster_identifier = "${var.redshift_cluster_identifier}"
  
  redshift_cluster_node_type = "${var.redshift_cluster_node_type}"
  
  redshift_cluster_number_of_nodes = "${var.redshift_cluster_number_of_nodes}"
  
  redshift_cluster_database_name = "${var.redshift_cluster_database_name}"
  
  redshift_cluster_master_username = "${var.redshift_cluster_master_username}"
   
 redshift_cluster_master_password = "${var.redshift_cluster_master_password}"
 
 redshift_cluster_wlm_json_configuration = "${var.redshift_cluster_wlm_json_configuration}"
  
  public_subnets = "${var.public_subnets}"
  
  vpc_id = "${var.vpc_id}"
  
  vpc_cidr = "${var.vpc_cidr}"
  
  redshift_role_arn = "${var.redshift_role_arn}"
  
  redshift_bucket_name = "${var.redshift_bucket_name}"
}
