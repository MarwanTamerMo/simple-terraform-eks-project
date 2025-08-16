#!/usr/bin/env bash
set -e  

MESSAGE="$1"
if [ -z "$MESSAGE" ]; then
  MESSAGE="Build from ${GITHUB_REPOSITORY}@${GITHUB_SHA}"
fi

# Avoid interactive prompts
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y
sudo apt-get install -y cowsay fortune-mod

cowsay "$MESSAGE"
cowsay "$(fortune)"
