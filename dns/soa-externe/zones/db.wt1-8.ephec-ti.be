$TTL 604800 
$ORIGIN wt1-8.ephec-ti.be.
@		IN	SOA	ns.wt1-8.ephec-ti.be. admin.wt1-8.ephec-ti.be. (
		1	; serial
		3600	; refresh
		6	; retry 
                1209600	; expire 
                3600	; minimum 
)

wt1-8.ephec-ti.be.	IN	NS	ns.wt1-8.ephec-ti.be.
@			IN	MX	10 mail

ns			IN	A		51.178.40.70
www			IN	A		51.178.40.70
@			IN	A		51.178.40.70
b2b			IN	CNAME		www

hostname		IN	A		51.178.41.128
mail			IN	A		51.178.41.128
postfixadmin		IN	CNAME		hostname
@		        IN 	TXT 		"v=spf1 a mx ip4:51.178.41.128 ~all"
mail._domainkey	IN	TXT	( "v=DKIM1; h=sha256; k=rsa; "
	  "p=p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4M6bEosgNY/0dg2wekP6pOBBBxMRHVX5MF33ogzppyGNTNSrAGPU7M+bX+VwV6rkGz4QEcKxBO608AFSacEUyQcPaPS/Um9j2P5yLkgIpbjaGv6oNN6IeHZi3RYFDWikdA76r+C2MbpnQ+tXz6YfR0gIxDa8GOe2STo/uJFYUTp"
	  "sOtAn69uo657AahpWd2v5CL7v5cXI7T2QOBNlZDkohEIkCh89cF2yoLt3qXkuzSVEcs4edE5eI5rQjFsA7ciZJ3Vdkhuq756esx7GY5C4kY+L2LEnLbfYI5EAlF0rVYAtfU60BawIDAQAB" )  ; ----- DKIM key mail for wt1-8.ephec-ti.be
