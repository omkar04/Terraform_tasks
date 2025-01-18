resource "aws_db_instance" "example" {
    allocated_storage = 20
    engine = "mysql"
    instance_class = "db.t2.micro"
    username = "admin"
    password = "admin"
    skip_final_snapshot = true
}