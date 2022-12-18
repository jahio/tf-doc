resource "docker_image" "caddy" {
  name         = "caddy:latest"
  keep_locally = false
}

resource "docker_container" "caddy" {
  image = docker_image.caddy.latest
  name  = "caddy-tutorial"
  ports {
    internal = 80
    external = var.ext_http_port
  }
}
