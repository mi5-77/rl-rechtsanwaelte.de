#!/bin/sh
set -eux

cd _site
echo "put ." | sshpass -p "$SSH_PASS" \
  sftp -oBatchMode=no -oStrictHostKeyChecking=no -r "$SSH_USER@$SSH_HOST"
