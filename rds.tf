# resource "aws_db_instance" "postgres" {
#   allocated_storage            = 20
#   engine                       = "postgres"
#   engine_version               = "17.4"
#   instance_class               = "db.t4g.micro"
#   db_name                      = "mydb"
#   username                     = var.db_username
#   password                     = var.db_password
#   multi_az                     = false
#   skip_final_snapshot          = true
#   copy_tags_to_snapshot        = false
#   storage_encrypted            = false
#   performance_insights_enabled = false
#   publicly_accessible          = true
#   vpc_security_group_ids       = [aws_security_group.rds_enable.id] 
# }

# output "rds_endpoint" {
#   value = aws_db_instance.postgres.endpoint
# }