
#!/bin/bash
eksctl create cluster -f kube_resources/aws_cluster.yaml
aws eks --region us-west-2 update-kubeconfig --name capstone
