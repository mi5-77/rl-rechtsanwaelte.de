#!/bin/sh
set -eux

echo put . | sshpass -p "$SSH_PASS" sftp -r "$SSH_USER@$SSH_HOST"
