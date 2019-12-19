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
  -e MOLECULE_IMAGE="$($distro)" `
  -e MOLECULE_COMMAND="$($cmd)" `
  quay.io/ansible/molecule:latest `
  molecule "$($command)"
