variable "domain" {
  description = "(Required) Domain for the url. Generating url: jenkins.[domain]"
}
variable "app_name" {
  description = "(Optional) Application name"
  default = "jenkins"
}
variable "app_namespace" {
  description = "(Optional) Namespace name"
  default = "jenkins"
}
variable "create_namespace" {
  description = "(Optional) Default 'false' value will create namespace in cluster. If you want use exist namespace set 'false' "
  default = true
}
variable "ports" {
  description = "(Optional) Port mapping"
  default = [
    {
      name = "web-access"
      internal_port = "8080"
      external_port = "80"
    }
  ]
}
variable "web_internal_port" {
  description = "(Optional) Connect URL to Container internal port. !Note! If this value changed, need specify new ports in var.ports"
  default = [
    {
      sub_domain = "jenkins."
      internal_port = "8080"
    }
  ]
}
variable "tls" {
  description = "(Optional) Define TLS , for use only HTTPS"
  default = []
}
variable "ingress_annotations" {
  description = "(Optional) Set addional annontations for ingress"
  default = null
}
variable "image_tag" {
  description = "(Optional) Docker image tag for jenkins/jenkins"
  default = "latest"
}
variable "volume_nfs" {
  description = "(Optional) Create NFS volume"
  default = []
}
variable "volume_config_map" {
  description = "(Optional) Create ConfigMap volume"
  default = []
}
variable "volume_host_path" {
  description = "(Optional) Create HostPath volume"
  default = []
}
variable "volume_mount" {
  description = "(Optional) Mount path into volume"
  default = []
}