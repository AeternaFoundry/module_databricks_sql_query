variable "sql_queries" {
  description = <<EOT
Map of sql_queries, attributes below
Required:
    - data_source_id
    - name
    - query
Optional:
    - created_at
    - description
    - parent
    - run_as_role
    - tags
    - updated_at
    - parameter (block):
        - date (optional, block):
            - value (required)
        - date_range (optional, block):
            - range (optional, block):
                - end (required)
                - start (required)
            - value (optional)
        - datetime (optional, block):
            - value (required)
        - datetime_range (optional, block):
            - range (optional, block):
                - end (required)
                - start (required)
            - value (optional)
        - datetimesec (optional, block):
            - value (required)
        - datetimesec_range (optional, block):
            - range (optional, block):
                - end (required)
                - start (required)
            - value (optional)
        - enum (optional, block):
            - multiple (optional, block):
                - prefix (optional)
                - separator (required)
                - suffix (optional)
            - options (required)
            - value (optional)
            - values (optional)
        - name (required)
        - number (optional, block):
            - value (required)
        - query (optional, block):
            - multiple (optional, block):
                - prefix (optional)
                - separator (required)
                - suffix (optional)
            - query_id (required)
            - value (optional)
            - values (optional)
        - text (optional, block):
            - value (required)
        - title (optional)
    - provider_config (block):
        - workspace_id (optional)
    - schedule (block):
        - continuous (optional, block):
            - interval_seconds (required)
            - until_date (optional)
        - daily (optional, block):
            - interval_days (required)
            - time_of_day (required)
            - until_date (optional)
        - weekly (optional, block):
            - day_of_week (required)
            - interval_weeks (required)
            - time_of_day (required)
            - until_date (optional)
EOT

  type = map(object({
    data_source_id = string
    name           = string
    query          = string
    created_at     = optional(string)
    description    = optional(string)
    parent         = optional(string)
    run_as_role    = optional(string)
    tags           = optional(list(string))
    updated_at     = optional(string)
    parameter = optional(list(object({
      date = optional(object({
        value = string
      }))
      date_range = optional(object({
        range = optional(object({
          end   = string
          start = string
        }))
        value = optional(string)
      }))
      datetime = optional(object({
        value = string
      }))
      datetime_range = optional(object({
        range = optional(object({
          end   = string
          start = string
        }))
        value = optional(string)
      }))
      datetimesec = optional(object({
        value = string
      }))
      datetimesec_range = optional(object({
        range = optional(object({
          end   = string
          start = string
        }))
        value = optional(string)
      }))
      enum = optional(object({
        multiple = optional(object({
          prefix    = optional(string)
          separator = string
          suffix    = optional(string)
        }))
        options = list(string)
        value   = optional(string)
        values  = optional(list(string))
      }))
      name = string
      number = optional(object({
        value = number
      }))
      query = optional(object({
        multiple = optional(object({
          prefix    = optional(string)
          separator = string
          suffix    = optional(string)
        }))
        query_id = string
        value    = optional(string)
        values   = optional(list(string))
      }))
      text = optional(object({
        value = string
      }))
      title = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    schedule = optional(object({
      continuous = optional(object({
        interval_seconds = number
        until_date       = optional(string)
      }))
      daily = optional(object({
        interval_days = number
        time_of_day   = string
        until_date    = optional(string)
      }))
      weekly = optional(object({
        day_of_week    = string
        interval_weeks = number
        time_of_day    = string
        until_date     = optional(string)
      }))
    }))
  }))
}

