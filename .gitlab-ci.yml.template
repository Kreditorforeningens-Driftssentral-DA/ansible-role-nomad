---
image: quay.io/ansible/molecule:latest

services:
  - docker:dind

stages:
  - test

before_script:
  - docker --version
  - python --version
  - ansible --version
  - molecule --version

ansible-role-nomad:
  stage: test
  tags:
    - docker
  variables:
    DOCKER_HOST: "tcp://docker:2375"
    PY_COLORS: 1
    DOCKER_DISTRO: "centos:7"
    DOCKER_COMMAND: "/usr/sbin/init"
  script:
    - cd nomad/
    - molecule test
  only:
    changes:
      - nomad/**/*
