## http://b2b.wt1.ephec-ti.be redirects to https://b2b.wt1.ephec-ti.be
server {
	listen 80;
	listen [::]:80;
	server_name b2b.wt1.ephec-ti.be;

	location / {
		return 301 https://b2b.wt1.ephec-ti.be$request_uri;
	}
}

## https://b2b.wt1.ephec-ti.be redirects to https://www.b2b.wt1.ephec-ti.be
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name b2b.wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.crt;
        ssl_certificate_key /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.key;
	
	include /etc/nginx/snippets/ssl.conf;

	location / {
		return 301 https://www.b2b.wt1.ephec-ti.be$request_uri;
	}
}
