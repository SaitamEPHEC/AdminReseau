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
intranet		IN	CNAME		www

hostname		IN	A		51.178.41.128
mail			IN	A		51.178.41.128
postfixadmin		IN	CNAME		hostname

