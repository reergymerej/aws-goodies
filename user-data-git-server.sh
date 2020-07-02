#!/usr/bin/env bash
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

  # Make this machine a Git server.
  sudo su
  yum update -y
  sleep 3 # without the wait, they step on each other
  yum install git -y
  sleep 3

  # create user
  sudo adduser git
  mkdir /home/git/.ssh
  touch /home/git/.ssh/authorized_keys
  chmod 700 /home/git/.ssh
  chmod 600 /home/git/.ssh/authorized_keys
  chown -R git:git /home/git/.ssh

  # create repo spot
  mkdir -p /srv/git
  sudo chown -R git:git /srv/git

  # restrict shell access
  which git-shell >> /etc/shells
  which git-shell | lchsh git

