#!/usr/bin/env bash
set -euo pipefail

## Pre setup: git and SSH key for GitHub
sudo apt update && sudo apt upgrade -y
sudo apt install -y\
	git\
	wget\
	gpg\
	gnupg\
	apt-transport-https\
	docker.io\
	docker-compose-v2\
	stow\
	build-essential\
	fish\
	vim\
	curl
	
# ssh-keygen -t ed25519 -C "cristian@crbelaus.com" -f ~/.ssh/id_ed25519 -N ""
# cat /home/crbelaus/.ssh/id_ed25519.pub

# ---------------------------
# Microsoft GPG key and VS Code repo
# ---------------------------
if [ ! -f /usr/share/keyrings/microsoft.gpg ]; then
    curl -fsSL https://packages.microsoft.com/keys/microsoft.asc \
      | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
fi

if [ ! -f /etc/apt/sources.list.d/vscode.sources ]; then
    sudo tee /etc/apt/sources.list.d/vscode.sources > /dev/null <<EOF
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
EOF
fi

# ---------------------------
# Google Cloud CLI GPG key and repo
# ---------------------------
if [ ! -f /usr/share/keyrings/cloud.google.gpg ]; then
    curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
      | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
fi

if [ ! -f /etc/apt/sources.list.d/google-cloud-sdk.sources ]; then
    sudo tee /etc/apt/sources.list.d/google-cloud-sdk.sources > /dev/null <<EOF
Types: deb
URIs: https://packages.cloud.google.com/apt
Suites: cloud-sdk
Components: main
Signed-By: /usr/share/keyrings/cloud.google.gpg
EOF
fi

# Refresh package list
sudo apt update

# Install packages from third-party repos
sudo apt install -y\
	code\
	google-cloud-cli\
	kubectl\
	google-cloud-cli-gke-gcloud-auth-plugin
	
# Set fish shell as default
chsh -s /usr/bin/fish

# Allow user to use Docker
sudo usermod -aG docker $USER

# Install mise
curl https://mise.run | sh
