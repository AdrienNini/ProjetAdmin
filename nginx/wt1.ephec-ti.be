server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name wt1.ephec-ti.be www.wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.crt;
	ssl_certificate_key /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.key;

	root /var/www/default/html/;

	index index.html index.htm index.php;

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