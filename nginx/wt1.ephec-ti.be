server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.crt;
	ssl_certificate_key /etc/letsencrypt/wt1.ephec-ti.be/wt1-certificate.key;
}