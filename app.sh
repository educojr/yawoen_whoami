#!/bin/bash

# Variables
hour=$(date +%H) # Check the hour

# Functions
start(){
  docker ps | grep whoami # Check if application is running
  [ $? -eq 1 ] && echo "Starting application" || echo "Application is already running" && exit 0 # If it is not running, start application, else show that application is already running and exit
  cd /home/ubuntu/yawoen_whoami/ && docker-compose up --no-recreate -d # Go to application directory and start it
  [ $? -eq 0 ] && echo "Application started!!!" || echo "Error starting application" # Check if the application was started and print a little debug
}

stop(){
  docker ps | grep whoami # Check if application if running
  [ $? -eq 0 ] && echo "Stopping aplication" || echo "Application is not running" && exit 0 # If it is running, stop application, else show that the application is not running and exit
  cd /home/ubuntu/yawoen_whoami/ && docker-compose down # Go to application directory and stop it
  [ $? -eq 0 ] && echo "Application stopped!!!" || echo "Error stopping application" # Check if the application was stopped and print a little debug
}

# Main
[ $hour -ge 07 ] && [ $hour -le 18 ] && start || stop # Check if the hour is between 07am and 07pm, if it is, then start the application, if it is not, then stop it
