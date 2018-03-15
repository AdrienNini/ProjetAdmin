
$ORIGIN wt1.ephec-ti.be.
$TTL	86400
@	IN	SOA	ns.wt1.ephec-ti.be admin.wt1.ephec-ti.be (
		 2018031501		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
; name servers - NS record
@				IN	NS			ns.wt1.ephec-ti.be.

; name servers - A record
ns 				IN	A				54.37.65.117

; web services
serverWeb		IN	A			54.37.65.117
www				IN	CNAME		serverWeb
