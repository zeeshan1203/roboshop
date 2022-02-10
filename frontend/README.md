# Frontend

The frontend is the service in RobotShop to serve the web content over Nginx.

To Install Nginx.

```
# yum install nginx -y
# systemctl enable nginx 
# systemctl start nginx 
```

Let's download the HTDOCS content and deploy under the Nginx path.

```
# curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
```

Deploy in Nginx Default Location.

```
# cd /usr/share/nginx/html
# rm -rf * 
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf
```

Finally restart the service once to effect the changes.

```
# systemctl restart nginx 
```
