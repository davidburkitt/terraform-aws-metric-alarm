
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  version = "~> 2.52"
  shared_credentials_file = var.aws_creds
}

resource "aws_cloudwatch_metric_alarm" "metric_alarm" {
  alarm_name                = var.metric_alarm.name
  alarm_description         = var.metric_alarm.description
  metric_name               = var.metric_alarm.metric_name
  namespace                 = var.metric_alarm.metric_namespace
  statistic                 = var.metric_alarm.statistic
  comparison_operator       = var.metric_alarm.comparitor
  period                    = var.metric_alarm.period
  evaluation_periods        = var.metric_alarm.periods
  threshold                 = var.metric_alarm.threshold
  insufficient_data_actions = var.metric_alarm.insufficient_data_actions
  alarm_actions             = var.metric_alarm.alarm_actions
}

