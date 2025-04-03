# vault-agent-setup
1. setup vault and do export vault in pc to access vault dev mode server by via cli
Note:
vault server -dev -dev-listen-address=0.0.0.0:8200

export VAULT_ADDR='http://0.0.0.0:8200'
export VAULT_TOKEN=xxxxx

vault status
vault auth list

##after above cmd, you can access vault server. but need to login to vault.
vault login

2. Create secret
3. Create policy
4. Create token which attach to policy
5. Run vault agent

####vault default method is token auth method (can check "vault auth list)
####default root token is long live token. can do everything. full right.

Vault Agent is useful in scenarios where you need automatic secret retrieval, injection, and renewal without modifying application code
Use Cases:
Auto-Authentication
Dynamic Secret Injection
Auto-Renewing Secrets
Running in Air-Gapped Environments
Reducing Latency for Secrets Retrieval
