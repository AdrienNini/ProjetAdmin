## http://wt1.ephec-ti.be redirects to https://wt1.ephec-ti.be
server {
	listen 80;
	listen [::]:80;
	server_name wt1.ephec-ti.be;

	location / {
		return 301 https://wt1.ephec-ti.be$request_uri;
	}
}

## https://wt1.ephec-ti.be redirects to https://www.wt1.ephec-ti.be
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.crt;
	ssl_certificate_key /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.key;
	
	include /etc/nginx/snippets/ssl.conf;

	location / {
		return 301 https://www.wt1.ephec-ti.be$request_uri;
	}
}
