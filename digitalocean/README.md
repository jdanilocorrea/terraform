digitalocean/
├── main.tf                # Chama os módulos
├── variables.tf
├── outputs.tf
├── providers.tf
└── modules/
    ├── droplet/
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── providers.tf
    ├── firewall/
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── providers.tf
    └── project/
        ├── main.tf
        ├── variables.tf
        ├── outputs.tf
        └── providers.tf
