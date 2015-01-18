[ ! -f /www/app/uwsgi_params ] && cp /home/uwsgi_params /www/app/
[ ! -f /www/app/uwsgi.ini ] && cp /home/uwsgi.ini /www/app/
[ ! -f /www/app/nginx-app.conf ] && cp /home/nginx-app.conf /www/app/

ln -s /www/app/nginx-app.conf /etc/nginx/sites-enabled/

rpcbind
/etc/init.d/autofs start
uwsgi --ini /www/app/uwsgi.ini
nginx