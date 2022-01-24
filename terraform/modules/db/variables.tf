variable "db_disk_image" {
  description = "image id for db"
  default = "fd8732b042bd42vd58p7"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
  default = "e9bvlnoa5ii1sp8bhcc1"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
