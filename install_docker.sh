#!/usr/bin/env bash

# uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# set up repo
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# add docker's gpg key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# add docker repo to apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker engine
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# add current user to docker group, log out, log in
sudo usermod -aG docker $USER

echo "Log out and log in for user group settings to kick in"
echo "Test with `docker run hello-world`
