server {
	listen 80;
	listen [::]:80;
	
	charset utf-8;

	root /var/www/b2b/html/;

	index index.html index.htm index.php;

	server_name b2b.wt1.ephec-ti.be www.b2b.ephec-ti.be;
	
	ssl_certificate /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.cert;
        ssl_certificate_key /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.key;

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
