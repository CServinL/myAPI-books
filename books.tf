resource "docker_image" "books" {
  name   = "myapi/books"
  build {
    path = "../myAPI-books/."
    tag  = [
      "books:latest"
      ]
  }
}
resource "docker_container" "books" {
  image = "myAPI-books:latest"
  name  = "myAPI-books"
  ports {
    internal = 5001
    external = 5001
  }
  env = [
      "MYSQL_IP=${docker_container.mysql.ip_address}",
      "MYSQL_PORT=3306",
      "MYSQL_USER=root",
      "MYSQL_PASSWORD=abcD_1234",
      ]
  depends_on = [
    docker_image.books
  ]
}