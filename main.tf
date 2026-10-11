resource "google_secure_source_manager_repository" "secure_source_manager_repositories" {
  for_each = var.secure_source_manager_repositories

  instance        = each.value.instance
  location        = each.value.location
  repository_id   = each.value.repository_id
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  project         = each.value.project
  service_account = each.value.service_account

  dynamic "initial_config" {
    for_each = each.value.initial_config != null ? [each.value.initial_config] : []
    content {
      default_branch = initial_config.value.default_branch
      gitignores     = initial_config.value.gitignores
      license        = initial_config.value.license
      readme         = initial_config.value.readme
    }
  }

  dynamic "scan_config" {
    for_each = each.value.scan_config != null ? [each.value.scan_config] : []
    content {
      dynamic "secret_scan_config" {
        for_each = scan_config.value.secret_scan_config != null ? [scan_config.value.secret_scan_config] : []
        content {
          enabled          = secret_scan_config.value.enabled
          inspect_template = secret_scan_config.value.inspect_template
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

