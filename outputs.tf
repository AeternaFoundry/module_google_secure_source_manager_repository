output "secure_source_manager_repositories_id" {
  description = "Map of id values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no id are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secure_source_manager_repositories_create_time" {
  description = "Map of create_time values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no create_time are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "secure_source_manager_repositories_deletion_policy" {
  description = "Map of deletion_policy values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no deletion_policy are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "secure_source_manager_repositories_description" {
  description = "Map of description values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no description are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.description if v.description != null && length(v.description) > 0 }
}
output "secure_source_manager_repositories_initial_config" {
  description = "Map of initial_config values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no initial_config are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => one(v.initial_config) if v.initial_config != null && length(v.initial_config) > 0 }
}
output "secure_source_manager_repositories_instance" {
  description = "Map of instance values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no instance are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "secure_source_manager_repositories_location" {
  description = "Map of location values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no location are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.location if v.location != null && length(v.location) > 0 }
}
output "secure_source_manager_repositories_name" {
  description = "Map of name values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no name are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "secure_source_manager_repositories_project" {
  description = "Map of project values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no project are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.project if v.project != null && length(v.project) > 0 }
}
output "secure_source_manager_repositories_repository_id" {
  description = "Map of repository_id values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no repository_id are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}
output "secure_source_manager_repositories_scan_config" {
  description = "Map of scan_config values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no scan_config are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => one(v.scan_config) if v.scan_config != null && length(v.scan_config) > 0 }
}
output "secure_source_manager_repositories_service_account" {
  description = "Map of service_account values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no service_account are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "secure_source_manager_repositories_uid" {
  description = "Map of uid values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no uid are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "secure_source_manager_repositories_update_time" {
  description = "Map of update_time values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no update_time are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "secure_source_manager_repositories_uris" {
  description = "Map of uris values across all secure_source_manager_repositories, keyed the same as var.secure_source_manager_repositories except keys with no uris are omitted"
  value       = { for k, v in google_secure_source_manager_repository.secure_source_manager_repositories : k => v.uris if v.uris != null && length(v.uris) > 0 }
}

