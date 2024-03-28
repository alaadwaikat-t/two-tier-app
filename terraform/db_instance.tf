resource "aws_db_subnet_group" "app_db_subnet_group" {
  name       = "myapp-db-subnet-group"
  subnet_ids = [aws_subnet.us-east-1a-private.id, aws_subnet.us-east-1b-private.id]
  tags = {
    Name = "MyApp DB Subnet Group"
  }
}

resource "aws_db_instance" "app_db" {
  allocated_storage         = 20
  storage_type              = "gp2"
  engine                    = "mysql"
  engine_version            = "8.0"
  instance_class            = "db.t3.micro"
  username                  = "admin"
  password                  = var.db_password
  parameter_group_name      = "default.mysql8.0"
  db_name                   = "appdb"
  db_subnet_group_name      = aws_db_subnet_group.app_db_subnet_group.name
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]
  enabled_cloudwatch_logs_exports = ["error", "general", "slowquery"]
  skip_final_snapshot       = true
  monitoring_interval       = 60
  monitoring_role_arn       = aws_iam_role.rds_monitoring.arn

  tags = {
    Name = "Application Database"
  }
}
