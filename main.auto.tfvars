aws_creds = "/Users/davidburkitt/git/repos/terraform/tf_aws_demo_1/.aws/credentials"
aws_region = "us-east-2"

#REPORT RequestId: 5002d846-892a-4bfe-83bb-b0c32406c482	Duration: 741.17 ms	Billed Duration: 800 ms	Memory Size: 128 MB	Max Memory Used: 84 MB	Init Duration: 345.65 ms
metric_alarms = [
{
    name = "LambdaDuration"
    comparitor = "GreaterThanThreshold"
    periods = "1"
    metric_name = "Duration"
    metric_namespace = "lambdaReportFilter"
    period = "30"
    statistic = "Average"
    threshold = "1"
    description = "Lambda duration greater than 1ms"
    insufficient_data_actions = []
    alarm_actions = ["arn:aws:sns:us-east-2:571562921621:LambdaStarts"]
}
]

