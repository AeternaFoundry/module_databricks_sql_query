resource "databricks_sql_query" "sql_queries" {
  for_each = var.sql_queries

  data_source_id = each.value.data_source_id
  name           = each.value.name
  query          = each.value.query
  created_at     = each.value.created_at
  description    = each.value.description
  parent         = each.value.parent
  run_as_role    = each.value.run_as_role
  tags           = each.value.tags
  updated_at     = each.value.updated_at

  dynamic "parameter" {
    for_each = each.value.parameter != null ? each.value.parameter : []
    content {
      dynamic "date" {
        for_each = parameter.value.date != null ? [parameter.value.date] : []
        content {
          value = date.value.value
        }
      }
      dynamic "date_range" {
        for_each = parameter.value.date_range != null ? [parameter.value.date_range] : []
        content {
          dynamic "range" {
            for_each = date_range.value.range != null ? [date_range.value.range] : []
            content {
              end   = range.value.end
              start = range.value.start
            }
          }
          value = date_range.value.value
        }
      }
      dynamic "datetime" {
        for_each = parameter.value.datetime != null ? [parameter.value.datetime] : []
        content {
          value = datetime.value.value
        }
      }
      dynamic "datetime_range" {
        for_each = parameter.value.datetime_range != null ? [parameter.value.datetime_range] : []
        content {
          dynamic "range" {
            for_each = datetime_range.value.range != null ? [datetime_range.value.range] : []
            content {
              end   = range.value.end
              start = range.value.start
            }
          }
          value = datetime_range.value.value
        }
      }
      dynamic "datetimesec" {
        for_each = parameter.value.datetimesec != null ? [parameter.value.datetimesec] : []
        content {
          value = datetimesec.value.value
        }
      }
      dynamic "datetimesec_range" {
        for_each = parameter.value.datetimesec_range != null ? [parameter.value.datetimesec_range] : []
        content {
          dynamic "range" {
            for_each = datetimesec_range.value.range != null ? [datetimesec_range.value.range] : []
            content {
              end   = range.value.end
              start = range.value.start
            }
          }
          value = datetimesec_range.value.value
        }
      }
      dynamic "enum" {
        for_each = parameter.value.enum != null ? [parameter.value.enum] : []
        content {
          dynamic "multiple" {
            for_each = enum.value.multiple != null ? [enum.value.multiple] : []
            content {
              prefix    = multiple.value.prefix
              separator = multiple.value.separator
              suffix    = multiple.value.suffix
            }
          }
          options = enum.value.options
          value   = enum.value.value
          values  = enum.value.values
        }
      }
      name = parameter.value.name
      dynamic "number" {
        for_each = parameter.value.number != null ? [parameter.value.number] : []
        content {
          value = number.value.value
        }
      }
      dynamic "query" {
        for_each = parameter.value.query != null ? [parameter.value.query] : []
        content {
          dynamic "multiple" {
            for_each = query.value.multiple != null ? [query.value.multiple] : []
            content {
              prefix    = multiple.value.prefix
              separator = multiple.value.separator
              suffix    = multiple.value.suffix
            }
          }
          query_id = query.value.query_id
          value    = query.value.value
          values   = query.value.values
        }
      }
      dynamic "text" {
        for_each = parameter.value.text != null ? [parameter.value.text] : []
        content {
          value = text.value.value
        }
      }
      title = parameter.value.title
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "schedule" {
    for_each = each.value.schedule != null ? [each.value.schedule] : []
    content {
      dynamic "continuous" {
        for_each = schedule.value.continuous != null ? [schedule.value.continuous] : []
        content {
          interval_seconds = continuous.value.interval_seconds
          until_date       = continuous.value.until_date
        }
      }
      dynamic "daily" {
        for_each = schedule.value.daily != null ? [schedule.value.daily] : []
        content {
          interval_days = daily.value.interval_days
          time_of_day   = daily.value.time_of_day
          until_date    = daily.value.until_date
        }
      }
      dynamic "weekly" {
        for_each = schedule.value.weekly != null ? [schedule.value.weekly] : []
        content {
          day_of_week    = weekly.value.day_of_week
          interval_weeks = weekly.value.interval_weeks
          time_of_day    = weekly.value.time_of_day
          until_date     = weekly.value.until_date
        }
      }
    }
  }
}

