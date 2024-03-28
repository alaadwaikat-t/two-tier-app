resource "aws_cloudwatch_metric_alarm" "ec2_high_cpu_utilization" {
  alarm_name          = "ec2-high-cpu-utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when EC2 CPU exceeds 80%"
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]
  dimensions = {
    InstanceId = aws_instance.app_server.id
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_high_cpu_utilization" {
  alarm_name          = "rds-high-cpu-utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = 60
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when RDS CPU exceeds 80%"
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]
  dimensions = {
    DBInstanceIdentifier = aws_db_instance.app_db.id
  }
}