output "metric_alarms_output" {
  value = "${formatlist("%v", aws_cloudwatch_metric_alarm.metric_alarm.*.id)}"
  description = "formatted list of alarms"
}

