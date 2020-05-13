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

mail._domainkey 	IN      TXT     	( "v=DKIM1; h=sha256; k=rsa; t=y; "
"p=MIIEowIBAAKCAQEA4M6bEosgNY/0dg2wekP6pOBBBxMRHVX5MF33ogzppyGNTNSr
AGPU7M+bX+VwV6rkGz4QEcKxBO608AFSacEUyQcPaPS/Um9j2P5yLkgIpbjaGv6o
NN6IeHZi3RYFDWikdA76r+C2MbpnQ+tXz6YfR0gIxDa8GOe2STo/uJFYUTppAi7O
mQM/ZzSNl64FxcSTIkl32r9yC8GWNysOtAn69uo657AahpWd2v5CL7v5cXI7T2QO
BNlZDkohEIkCh89cF2yoLt3qXkuzSVEcs4edE5eI5rQjFsA7ciZJ3Vdkhuq756es
x7GY5C4kY+L2LEnLbfYI5EAlF0rVYAtfU60BawIDAQABAoIBAGUlsHIcdOaEmbpQ
GHo6gdiTKc70DjxDxXW0ocmgw7Q2DWxnN3VadaADHOZ9xhk7w5xaRUKodZtBh9mA
zsLUY/S7H3zaugZuJd+pRFh8gp+F12RT9fyrr317zqmo0ach0PSDFNnzYiZntzTA
++Zq2SHqUD9wXRtbjhHOioMRqkoJBMVY4+35S8Ngbor0dt5z8n7rErwD5bxArXkx
eNvN2Md89AJ7OATgOnMlQ5T37b86OqycU+C8tXaWDJvHy6Wryp6dtUdiNVKnFxOC
x9fDI5ams+JN3er6IO6cI5fhjZqCLi7FkRs0g8b4JeSN69fpK1nuDn1H1py/ZCMM
z2qVlgkCgYEA+snLPFaKe2NHEQTE2AlJEcoosdlNU9UM+lHUj/3R6MAWneIXSZo+
HLq2HDuHxN5piFy8No+uWBc4zu1FRpbeo7z1qncxBjykpErq8LAwH1qQHPwOFuOK
1AAP7AWH3r+t9EZZpXxvEYmURNr5NGCj/uI8ZkujQpOcHDMM3iEj0g8CgYEA5XqX
LqMkO7127cOC70nx9cbk4XuVnIGkpUGFiE+7p+/8SrtotvJLnb8pPlJagNM+pgWm
wI33fjKIkn9Soxb/Wuhf4Y2OReO/cHwsaK08ZGZZibib41YQyzOjfMI59z+uij3W
9XI6H/nBnp+m/8+deIxxMwYElvpLCj4UlBOuRuUCgYAMJFr/p9z6jlrxev6gywpL
nzMLMU8qIOWI9Q9KjWptT2eI61pfSOV69Js+kK9JG8+WN48xQRGa2Dz638f72/AZ
k1t9jlnESIlcHvhzAMTDr9nMXXO9LfUZwIsEzVu/sB4W9pT+iyDBg5y3HLb2DzvB
amisNztHTOhBAUO9OXOHhwKBgQCn0+Jhb1r+ffBOr2BBFPlqYI3gAnxGu+HoImVA
bd+2UKNZHHrW4Zk/wyCsvZoHAXeeACAWTz2kA90yFwAe2qDioXQOB3L31jqaT5ZC
7/9tBhWRzXvk5XreweNdSMcP9nj2DYf6dhHgdM6P7f86s2JdWYkoYcxVhrP+x6xR
J5ubqQKBgH9rQ6UC3n+n0TBcHC1sDoXoT4qW4TxkcLYX9H70nHJWhWN/HbRmsI9N
QIwdATcowC9pR8QHb12nLydYrKYb4Ot5gzWGqXntVjwqpZdYm8yvdOWVQstBeI9s
kMiC8x8BhnT8xZPMsQXf+JEn0gFzrbxuabS2Ns+iZMeQNad70tq4" )  ; ----- DKIM key mail for wt1-8.ephec-ti.be

