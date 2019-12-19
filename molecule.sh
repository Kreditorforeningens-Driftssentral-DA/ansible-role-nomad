#!/usr/bin/env bash
MOLECULE_COMMAND=$1
TEST_IMAGE=centos:8
TEST_IMAGE_CMD=/usr/sbin/init
ANSIBLE_ROLE=nomad

docker run --rm -it `
  -v ./${role}:/tmp/${role} \
  -v "/var/run/docker.sock:/var/run/docker.sock" \
  -w "/tmp/$($role)" \
  -e MOLECULE_IMAGE="$($distro)" \
  -e MOLECULE_COMMAND="$($cmd)" \
  -e MOLECULE_NO_LOG=true \
  quay.io/ansible/molecule:latest \
  molecule "$($command)"
