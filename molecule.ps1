param (
    [string]$command = "list",
    [string]$distro  = "centos:7",
    [string]$cmd     = "/usr/sbin/init"
)
$role = "nomad"

docker run --rm -it `
  -v "$($pwd)/$($role):/tmp/$($role)" `
  -v "/var/run/docker.sock:/var/run/docker.sock" `
  -w "/tmp/$($role)" `
  -e DOCKER_DISTRO="$($distro)" `
  -e DOCKER_COMMAND="$($cmd)" `
  quay.io/ansible/molecule:2.22 `
  molecule "$($command)"
