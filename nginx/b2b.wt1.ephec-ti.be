server {
	listen 80;
	listen [::]:80;

	root /var/www/b2b/html/;

	index index.html index.htm index.php;

	server_name b2b.wt1.ephec-ti.be www.b2b.ephec-ti.be;

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
