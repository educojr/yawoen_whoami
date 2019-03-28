#!/bin/bash

# Functions
start(){
  echo "Starting application"
  cd /opt/yawoen_whoami/ && docker-compose up --build -d
  [ $? -eq 0 ] && echo "Application started!!!" || echo "Error starting application"
}

stop(){
  echo "Stopping aapli"
  cd /opt/yawoen_whoami/ && docker-compose down
  [ $? -eq 0 ] && echo "Application stopped!!!" || echo "Error stopping application"
}

# Main
case $1 in
  start)
    start
    ;;
  stop)
    stop
    ;;
esac
