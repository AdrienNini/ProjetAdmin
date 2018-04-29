server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name b2b.wt1.ephec-ti.be;

	ssl_certificate /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.crt;
        ssl_certificate_key /etc/letsencrypt/b2b.wt1.ephec-ti.be/b2b-certificate.key;
}
