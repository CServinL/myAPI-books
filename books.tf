# Configure this value in the pipeline
variable "mysql_ip" { type = string }

resource "docker_container" "books" {
  image = "myAPI-books:latest"
  name  = "myAPI-books"
  ports {
    internal = 5001
    external = 5001
  }
  env = [
      "MYSQL_IP=${var.mysql_ip}",
      "MYSQL_PORT=3306",
      "MYSQL_USER=root",
      "MYSQL_PASSWORD=abcD_1234",
      ]
}