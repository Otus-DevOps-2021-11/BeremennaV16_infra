variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
#variable "image_id" {
#  description = "Disk image"
#}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "private_key" {
  description = "your private ssh key"
}
variable "app_disk_image" {
  description = "image id for app"
  default     = "fd8hidjdmp0unfmll93i"
}
variable "db_disk_image" {
  description = "image id for db"
  default     = "fd8732b042bd42vd58p7"
}
variable "yandex_vpc_network" {
  description = "id of my vpc_network"
}
