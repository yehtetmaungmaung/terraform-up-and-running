terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-by-yehtetmaungmaung"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_db_instance" "example" {
    identifier_prefix = "terraform-up-and-running"
    engine = "mysql"
    allocated_storage = 5
    instance_class = "db.t2.micro"
    skip_final_snapshot = true
    db_name = "rt5"

    username = var.db_username
    password = var.db_password

}