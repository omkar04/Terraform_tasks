resource "aws_cloudwatch_metric_alarm" "test_alarm1" {
  alarm_name = "HighCPUAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = 1
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = 60
  statistic = "Average"
  threshold = 0
  dimensions = {
    instance_id = "i-0e4ecf776e765a059"
  }
 
}