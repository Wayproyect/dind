#!/bin/bash
# Reset permision on ssh
chmod 600 /etc/ssh/ssh*;
echo "Starting sshd..."
/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config
