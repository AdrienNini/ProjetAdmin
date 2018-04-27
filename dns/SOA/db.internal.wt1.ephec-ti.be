
$ORIGIN wt1.ephec-ti.be.
$TTL	43200
@	IN	SOA	ns.wt1.ephec-ti.be. admin.wt1.ephec-ti.be. (
		 	2018042715	; Serial
			 43200		; Refresh
			  7200		; Retry
			2419200		; Expire
			  43200 )	; Negative Cache TTL
;
; name servers - NS record
@				IN	NS			ns.wt1.ephec-ti.be.
@				IN 	MX 			10	mail
@				IN	TXT 		"v=spf1 a mx ip4:54.37.65.136  include:_spf.google.com ~all"

; name servers - A record
ns 				IN	A				54.37.65.117

; web services
serverWeb			IN	A		54.37.65.117
www					IN	CNAME	serverWeb
_acme-challenge			1		IN	TXT		"vGHSmZLfN_feiGbIjV02L_Sc1XCNb-JxqdOYyMGIR_4"
_acme-challenge.www		1		IN	TXT		"rVMMfsMkTXoF5ZWVqsmytu0ZMlKJf0lEgcYfEiz-Mk4"
b2b					IN	CNAME	serverWeb
_acme-challenge.b2b		1		IN	TXT 	"97gNOZ66fWOAkriFxX8ZrdXKeVq4VLfT9GE1wupS4XE"
intranet			IN	CNAME	serverWeb

; mail services
mail					IN 	A		54.37.65.136
smtp					IN	CNAME	mail
pop3					IN	CNAME	mail
imap					IN	CNAME	mail
mail._domainkey			IN	TXT		( "v=DKIM1; h=sha256; k=rsa; "
	  "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqRoD9iyBBLHRFm7mKI2X5bn1PMffeoYKVRSR5t83gjgH0tClihEwHXDGU4gvfe5TfVMISFL55Iu4UqWfV12cdw1Cxs71G44UOEKxyLHFLU/ZmqXOEei1d42vhqfZj3/M8fODdm9QsqYGjwvpF9BTVxnTohOXuJnEwYWdEbcRzOISs7op7YV+6Ir0WNyV30zXawnpb5LVoH+7Dn"
	  "CNmZzvD9Sq72S2vt3rUqfq5SahZ3sHGo1+q8ZWfTB4xE/WNOmYavrrwhRo5zuJYnLkGw7voN0ikCPCA+mF53itFjHBefuQh7fZEIK4OYYqzkol2l2sZnzLcQfnxjuHz1yo86hmqwIDAQAB" )  ; ----- DKIM key mail for wt1.ephec-ti.be
_dmarc			 		IN 	TXT		("v=DMARC1;p=none;sp=reject;pct=10;"
   "adkim=r;aspf=r;fo=1;ri=86400")