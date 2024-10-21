# rds.tf
resource "aws_db_instance" "mysql" {
  identifier        = "ecommerce-mysql"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro" # Lowest plan
  allocated_storage  = 20             # Minimum required storage
  username          = var.db_username
  password          = var.db_password
  db_name           = "ecommerce"
  skip_final_snapshot = true
  publicly_accessible = false
}
