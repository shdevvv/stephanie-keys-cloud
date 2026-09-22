# DB Subnet Group: Mengelompokkan Private Subnets untuk Database
resource "aws_db_subnet_group" "main" {
  name       = "stephanie-keys-db-subnet-group"
  subnet_ids = aws_subnet.private[*].id

  tags = {
    Name = "stephanie-keys-db-subnet-group"
  }
}

# AWS RDS Instance (PostgreSQL 16)
resource "aws_db_instance" "postgres" {
  identifier             = "stephanie-keys-db"
  allocated_storage      = 20
  max_allocated_storage  = 100
  engine                 = "postgres"
  engine_version         = "16"
  instance_class         = "db.t4g.micro" # Instance tier hemat/free-tier
  db_name                = "stephanie_keys_db"
  username               = "postgres"
  password               = "StephanieKeysStrongPassword2026!" # Disarankan menggunakan AWS Secrets Manager di produksi
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot    = true
  publicly_accessible    = false # DB TIDAK BISA diakses langsung dari internet

  tags = {
    Name = "stephanie-keys-rds-postgres"
  }
}