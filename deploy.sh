#!/usr/bin/env bash

set -eu

SSHFS_DIR=sshfs-public

mkdir "$SSHFS_DIR"
sshfs www.primeos.dev:/var/www/html/ "$SSHFS_DIR"

rsync -vcrlpi --safe-links --chmod=D0755,F0644 --delete public/ "$SSHFS_DIR"
# Optional: -t

fusermount3 -u "$SSHFS_DIR"
rmdir "$SSHFS_DIR"
