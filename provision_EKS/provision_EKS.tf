module "eks" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = "EKS_Test_cluster"
  cluster_version = "1.24"
  subnet_ids = ["subnet-12345678", "subnet-87654321"]
}