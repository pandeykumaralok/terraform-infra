# terraform-infra
Centralized Terraform repository for provisioning, managing, and version-controlling AWS infrastructure. Implements reusable modules, remote state storage, least-privilege IAM, and environment isolation to deliver consistent and reliable infrastructure deployments.

# HashiCorp Vault Setup (Dev Mode)

```bash
# Start Vault in development mode
vault server -dev
```

> Keep this terminal open and copy the **Root Token** displayed.

```bash
# Open a new terminal and configure the Vault address
export VAULT_ADDR="http://127.0.0.1:8200"
```

```bash
# Login to Vault
vault login
```

```bash
# Check Vault status
vault status
```

```bash
# List enabled secrets engines
vault secrets list
```

```bash
# Enable KV v2 secrets engine (Run only if secret/ doesn't exist)
vault secrets enable -path=secret kv-v2
```

```bash
# Store AWS credentials in Vault
vault kv put secret/aws \
    access_key=<AWS_ACCESS_KEY_ID> \
    secret_key=<AWS_SECRET_ACCESS_KEY>
```

```bash
# Verify stored credentials
vault kv get secret/aws
```

```bash
# Export AWS credentials from Vault
export AWS_ACCESS_KEY_ID=$(vault kv get -field=access_key secret/aws)

export AWS_SECRET_ACCESS_KEY=$(vault kv get -field=secret_key secret/aws)

export AWS_REGION=ap-south-1
```

```bash
# Verify exported environment variables
env | grep AWS
```

```bash
# Verify AWS authentication
aws sts get-caller-identity
```

```bash
# Initialize Terraform (first time or after provider/module changes)
terraform init
```

```bash
# Review infrastructure changes
terraform plan
```

```bash
# Provision infrastructure
terraform apply
```

## Notes

* Keep the Vault terminal running.
* If Codespaces or Vault restarts, all secrets are lost in **Dev Mode**.
* Store the AWS credentials again after restarting Vault.
* Export the AWS environment variables before running Terraform.

