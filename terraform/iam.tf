resource "aws_iam_role" "rds_monitoring" {
  name = "rds_monitoring_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "monitoring.rds.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      },
    ]
  })
}
