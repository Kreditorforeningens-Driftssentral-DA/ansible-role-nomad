$workdir = "molecule"
docker run --rm -it `
  -v $pwd/:/tmp/$workdir `
  -v /var/run/docker.sock:/var/run/docker.sock `
  -w /tmp/$workdir `
  quay.io/ansible/molecule:2.22 `
  molecule init role --role-name nomad
