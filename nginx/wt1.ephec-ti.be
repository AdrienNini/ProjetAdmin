server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/default/html/;

	index index.html index.htm index.php;

	server_name wt1.ephec-ti.be www.wt1.ephec-ti.be;

	charset utf-8;

	location / {
		try_files $uri $uri/ =404;
	}

	location ~ \.php$ {
        	include snippets/fastcgi-php.conf;
        	fastcgi_pass unix:/run/php/php7.0-fpm.sock;
    	}


	location ~ /\.ht {
		deny all;
	}
}
