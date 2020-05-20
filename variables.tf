variable "aws_creds" {
  type        = string
  description = "path to AWS secret and key"
}

variable "aws_region" {
  type        = string
  description = "aws region"
}


variable "metric_alarms" {
  type = list(object({
    name = string               # alarm name
    description = string        # alarm description
    metric_name = string        # metric name
    metric_namespace = string   # metric name space
    comparitor = string         # metric comparison formula
    statistic = string          # statistical measure of the metric to monitor e.g. Average, Max, Min
    period = string             # period in seconds over which to monitor
    periods = string            # number of periods to monitor
    threshold = string          # threshold value
    insufficient_data_actions = list(string)  # list of arns for insufficiant data event
    alarm_actions = list(string)  #list of arns for alarm event
  }))
  description = "List of metric alarms"
}

