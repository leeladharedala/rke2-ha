#!/bin/bash

# Install RKE2 server
curl -sfL https://get.rke2.io | sh -

# Enable and start the RKE2 service
systemctl enable rke2-server.service
systemctl start rke2-server.service

# Add the kubeconfig to the home directory
mkdir -p ~/.kube
cp /etc/rancher/rke2/rke2.yaml ~/.kube/config
