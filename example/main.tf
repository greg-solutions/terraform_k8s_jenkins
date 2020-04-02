module "jenins" {
  source = "../"
  domain = "example.com"
  volume_nfs = [{
    path_on_nfs = "/"
    nfs_endpoint = "10.10.0.100"
    volume_name = "nfs"
  }]
  volume_mount = [{
    mount_path = "/var/jenkins_home"
    sub_path = "jenkins"
    volume_name = "nfs"
  }]
}