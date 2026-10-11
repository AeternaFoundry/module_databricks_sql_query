output "sql_queries_id" {
  description = "Map of id values across all sql_queries, keyed the same as var.sql_queries except keys with no id are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_queries_created_at" {
  description = "Map of created_at values across all sql_queries, keyed the same as var.sql_queries except keys with no created_at are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "sql_queries_data_source_id" {
  description = "Map of data_source_id values across all sql_queries, keyed the same as var.sql_queries except keys with no data_source_id are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.data_source_id if v.data_source_id != null && length(v.data_source_id) > 0 }
}
output "sql_queries_description" {
  description = "Map of description values across all sql_queries, keyed the same as var.sql_queries except keys with no description are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sql_queries_name" {
  description = "Map of name values across all sql_queries, keyed the same as var.sql_queries except keys with no name are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_queries_parameter" {
  description = "Map of parameter values across all sql_queries, keyed the same as var.sql_queries except keys with no parameter are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.parameter if v.parameter != null && length(v.parameter) > 0 }
}
output "sql_queries_parent" {
  description = "Map of parent values across all sql_queries, keyed the same as var.sql_queries except keys with no parent are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "sql_queries_provider_config" {
  description = "Map of provider_config values across all sql_queries, keyed the same as var.sql_queries except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_queries_query" {
  description = "Map of query values across all sql_queries, keyed the same as var.sql_queries except keys with no query are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.query if v.query != null && length(v.query) > 0 }
}
output "sql_queries_run_as_role" {
  description = "Map of run_as_role values across all sql_queries, keyed the same as var.sql_queries except keys with no run_as_role are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.run_as_role if v.run_as_role != null && length(v.run_as_role) > 0 }
}
output "sql_queries_schedule" {
  description = "Map of schedule values across all sql_queries, keyed the same as var.sql_queries except keys with no schedule are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "sql_queries_tags" {
  description = "Map of tags values across all sql_queries, keyed the same as var.sql_queries except keys with no tags are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sql_queries_updated_at" {
  description = "Map of updated_at values across all sql_queries, keyed the same as var.sql_queries except keys with no updated_at are omitted"
  value       = { for k, v in databricks_sql_query.sql_queries : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

