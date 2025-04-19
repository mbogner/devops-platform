#!/usr/bin/env bash

# Get your Mac's current IP
GITLAB_IP=$(ipconfig getifaddr en0)

# Fail fast if empty
if [[ -z "$GITLAB_IP" ]]; then
  echo "❌ Could not get host IP (check interface en0)"
  exit 1
fi

echo "🛠 Replacing __GITLAB_IP__ with $GITLAB_IP"

# Replace and write to actual config
sed "s/__GITLAB_IP__/$GITLAB_IP/g" runner-config.template.toml > runner-config.toml
