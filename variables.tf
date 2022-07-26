variable "subscription_id" {
    description = "Azure Subscription ID"
    type = string
}

variable "tenant_id" {
    description = "Azure Tenant ID"
    type = string
}

variable "machine_hostname" {
    description = "Virtual Machine Hostname"
    type = string
}

variable "machine_size" {
    description = "Virtual Machine Size"
    type = string
}

variable "machine_admin_username" {
    description = "Admin Windows Username"
    type = string
}

variable "machine_admin_password" {
    description = "Admin Windows Password"
    type = string
}

variable "tags" {
    description = "Resource Tags"
    type = map
}