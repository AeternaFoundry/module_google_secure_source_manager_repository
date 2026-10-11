variable "secure_source_manager_repositories" {
  description = <<EOT
Map of secure_source_manager_repositories, attributes below
Required:
    - instance
    - location
    - repository_id
Optional:
    - deletion_policy
    - description
    - project
    - service_account
    - initial_config (block):
        - default_branch (optional)
        - gitignores (optional)
        - license (optional)
        - readme (optional)
    - scan_config (block):
        - secret_scan_config (optional, block):
            - enabled (optional)
            - inspect_template (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    instance        = string
    location        = string
    repository_id   = string
    deletion_policy = optional(string)
    description     = optional(string)
    project         = optional(string)
    service_account = optional(string)
    initial_config = optional(object({
      default_branch = optional(string)
      gitignores     = optional(list(string))
      license        = optional(string)
      readme         = optional(string)
    }))
    scan_config = optional(object({
      secret_scan_config = optional(object({
        enabled          = optional(bool)
        inspect_template = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

