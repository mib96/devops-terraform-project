#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo apt-get install docker.io -y
sudo systemctl start nginx 
sudo systemctl enable nginx 
sudo systemctl start docker 
sudo systemctl enable docker  
sudo apt-get install docker-compose -y
