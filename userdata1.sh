#!/bin/bash

sudo apt update -y
sudo apt install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx

cat <<EOF | sudo tee /var/www/html/index.html
<html>
<head>
<title>Terraform Deployment</title>
</head>
<body style="font-family: Arial; text-align:center; margin-top:50px;">
<h1>Terraform Deployment Successful - Webserver-1</h1>
<p style="color: green">This EC2 instance was created using Terraform</p>
<p>Region: us-east-1</p>
<p>Automation by DevOps</p>
</body>
</html>
EOF