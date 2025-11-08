# 1. Limpa cache e inicializa
`m -rf .terraform .terraform.lock.hcl`

`terraform init -upgrade -reconfigure`

# 2. Formata e valida
`terraform fmt -recursive`

`terraform validate`

# 3. Planeja
terraform plan -var-file="terraform.tfvars" -out=tfplan

# 4. Aplica
terraform apply tfplan

# 5. Exporta kubeconfig (exemplo DigitalOcean)
export KUBECONFIG=./modules/doks/kubeconfig.yaml
kubectl get nodes
