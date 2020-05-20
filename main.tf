
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  shared_credentials_file = var.aws_creds
}

resource "aws_cloudwatch_metric_alarm" "metricAlarm" {
  count = length(var.metric_alarms)
  alarm_name                = var.metric_alarms[count.index].name
  alarm_description         = var.metric_alarms[count.index].description
  metric_name               = var.metric_alarms[count.index].metric_name
  namespace                 = var.metric_alarms[count.index].metric_namespace
  statistic                 = var.metric_alarms[count.index].statistic
  comparison_operator       = var.metric_alarms[count.index].comparitor
  period                    = var.metric_alarms[count.index].period
  evaluation_periods        = var.metric_alarms[count.index].periods
  threshold                 = var.metric_alarms[count.index].threshold
  insufficient_data_actions = var.metric_alarms[count.index].insufficient_data_actions
  alarm_actions             = var.metric_alarms[count.index].alarm_actions
}

