
$ORIGIN wt1.ephec-ti.be.
$TTL	86400
@	IN	SOA	ns.wt1.ephec-ti.be admin.wt1.ephec-ti.be (
		 	2018041902	; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
; name servers - NS record
@				IN	NS			ns.wt1.ephec-ti.be.
@				IN 	MX 			10	mail

; name servers - A record
ns 				IN	A				54.37.65.117

; web services
serverWeb			IN	A		54.37.65.117
www				IN	CNAME		serverWeb
b2b				IN	CNAME		serverWeb
intranet			IN	CNAME		serverWeb

; mail services
mail					IN 	A		54.37.65.136
smtp					IN	CNAME	mail
pop3					IN	CNAME	mail
imap					IN	CNAME	mail
mail._domainkey			IN	TXT	( "v=DKIM1; h=sha256; k=rsa; "
	  "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqRoD9iyBBLHRFm7mKI2X5bn1PMffeoYKVRSR5t83gjgH0tClihEwHXDGU4gvfe5TfVMISFL55Iu4UqWfV12cdw1Cxs71G44UOEKxyLHFLU/ZmqXOEei1d42vhqfZj3/M8fODdm9QsqYGjwvpF9BTVxnTohOXuJnEwYWdEbcRzOISs7op7YV+6Ir0WNyV30zXawnpb5LVoH+7Dn"
	  "CNmZzvD9Sq72S2vt3rUqfq5SahZ3sHGo1+q8ZWfTB4xE/WNOmYavrrwhRo5zuJYnLkGw7voN0ikCPCA+mF53itFjHBefuQh7fZEIK4OYYqzkol2l2sZnzLcQfnxjuHz1yo86hmqwIDAQAB" )  ; ----- DKIM key mail for wt1.ephec-ti.be
