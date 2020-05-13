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
mail._domainkey IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsxFhz9D1qVgtU7SzdMImkGs9yKhjZ6JXSKLkRP8YgrPlz6FTU7z6B1npOupXUSAVJPm3UiYcmyZ7uZqNRMCJoeLmgQw288qcHUJxUo6Rebb2eG925F0r5AzN8slQiyT7k30FDn7qXDrlSnUDMgZyd2aj0FEVkbGFCwSHewhwdqtq1S0zjkITNukA3Rfaa6kkqhMep3UJKCytmw"
          "A08TCqqO/Rx5HXi1kGfZwWIam7tO8Pp9uoT/H5lHsmASpNUyRildI74Q4AvA3HX0TqncOdxDPXI/S0+J9GoEL+fsZyloQjQJ97yu3VOWc94pylN9u4J5xeQ4BmwyJ6wsJWZGKM8QIDAQAB" )  ; ----- DKIM key mail for wt1-8.ephec-ti.be
