variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "app_disk_image" {
  description = "image id for app"
  default = "reddit-app-base"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
