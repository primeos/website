#!/usr/bin/env bash

set -e

echo -e "cd /var/www/html\nput -R public/*" | sftp -b - www.primeos.dev
