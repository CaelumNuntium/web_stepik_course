 sudo cd /home/box/web
 sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
 sudo rm -rf /etc/nginx/sites-enabled/default
 sudo nginx -t
 sudo /etc/init.d/nginx restart
 sudo gunicorn --bind='0.0.0.0:8080' hello:application
 