resource "aws_security_group" "db_sg" {
  vpc_id = var.vpc_id
  ingress = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      security_groups = [var.app_sg_id]
    }
  ]
}

resource "aws_db_instance" "db" {
  identifier        = "rds-db"
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  username          = var.db_username
  password          = var.db_password
  multi_az          = true
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db-subnet-group"
  subnet_ids = var.private_subnets
}
