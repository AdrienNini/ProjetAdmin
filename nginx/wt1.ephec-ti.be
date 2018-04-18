## http://mydomain.com redirects to https://mydomain.com
server {
	listen 80;
	listen [::]:80;
	server_name wt1.ephec-ti.be;

	include /etc/nginx/snippets/letsencrypt.conf;

	location / {
		return 301 https://wt1.ephec-ti.be$request_uri;
	}
}

## https://mydomain.com redirects to https://www.mydomain.com
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/live/www.wt1.ephec-ti.be/fullchain.pem;
	ssl_certificate_key /etc/letsencrypt/live/www.wt1.ephec-ti.be/privkey.pem;
	ssl_trusted_certificate /etc/letsencrypt/live/www.wt1.ephec-ti.be/fullchain.pem;
	include /etc/nginx/snippets/ssl.conf;

	location / {
		return 301 https://www.wt1.ephec-ti.be$request_uri;
	}
}
