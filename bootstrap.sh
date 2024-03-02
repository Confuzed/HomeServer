#!/usr/bin/env bash

echo "This script will guide you through cloning your private server configuration repository..."

ssh-keygen -t rsa -b 4096 -C "Home Server Key $(uuidgen)" -f ~/.ssh/github_id_rsa -N ""

echo "Add this public key to your GitHub account:"
echo ""

cat ~/.ssh/github_id_rsa.pub

echo ""
echo "Press a key to continue when the key is added in GitHub..."
echo ""
read $n

RepoDirectory=$(dirname $PWD)
pushd $RepoDirectory

git clone git@github.com:Confuzed/HomeServerConfiguration.git

popd