#!/bin/bash

# Functions
start(){
  echo "Starting application"
  cd /home/ubuntu/yawoen_whoami/ && docker-compose up --no-recreate -d
  [ $? -eq 0 ] && echo "Application started!!!" || echo "Error starting application"
}

stop(){
  echo "Stopping aplication"
  cd /home/ubuntu/yawoen_whoami/ && docker-compose down
  [ $? -eq 0 ] && echo "Application stopped!!!" || echo "Error stopping application"
}

# Main
[ $(date +%H) -gt 07 ] && [ $(date +%H) -lt 20 ] && start || stop
