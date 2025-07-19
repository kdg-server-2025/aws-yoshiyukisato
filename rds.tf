resource "aws_db_instance" "default"{
  #ストレージの量
  allocated_storage = 20

  #データベース名と使用データベース
  db_name = "testdb"
  engine = "PostgreSQL"
  engine_version = "17.4-R1"

  instance_class = "instance_class db.t4g.micro"

  username = "root"
  password = "rootroot"

  parameter_group_name = "default.postgresql"

  #追加費用がかかるのを防止するための設定
  skip_final_snapshot = true
  copy_tags_to_snapshot = false
  storage_encrypted = false
  performance_insights_enabled = false

  multi_az = false
}
