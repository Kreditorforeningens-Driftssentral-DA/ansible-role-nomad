---
sudo: required
language: python

services:
  - docker

install:
  - pip install molecule
  - pip install docker

script:
  - molecule --version
  - ansible --version
  - docker --version
  - cd nomad
  - molecule test
