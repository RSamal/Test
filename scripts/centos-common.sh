#!/bin/bash

# Patch updates for CentOS
yum update -y --exclude=kernel

# Tools
yum install -y wget nano unzip nc telnet screen
