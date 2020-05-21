## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | ~> 2.52 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.52 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_creds | path to AWS secret and key | `string` | n/a | yes |
| aws\_region | aws region | `string` | n/a | yes |
| metric\_alarm | Object represeting metric alarm | <pre>object({<br>    name = string               # alarm name<br>    description = string        # alarm description<br>    metric_name = string        # metric name<br>    metric_namespace = string   # metric name space<br>    comparitor = string         # metric comparison formula<br>    statistic = string          # statistical measure of the metric to monitor e.g. Average, Max, Min<br>    period = string             # period in seconds over which to monitor<br>    periods = string            # number of periods to monitor<br>    threshold = string          # threshold value<br>    insufficient_data_actions = list(string)  # list of arns for insufficiant data event<br>    alarm_actions = list(string)  #list of arns for alarm event<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| metric\_alarms\_output | formatted list of alarms |

