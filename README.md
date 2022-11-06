# Autodrill
A script to automate the collection of DNS records using the drill command.

I made this script while I was doing a university assignment, I'm just
uploading it, I won't be maintaining it anymore.

## Syntax

```sh
autodrill.sh [options] <domain>
```

### Options

- -d <dns>:	select the DNS to use (default: 1.1.1.1)
- -o <file>:	select an output file to dump the collected information

### DNS records that are looked up

-  a
-  aaaa
-  afsdb
-  atma
-  caa
-  cert
-  cname
-  dhcid
-  dname
-  dnskey
-  ds
-  hinfo
-  isdn
-  mb
-  mg
-  minfo
-  mr
-  mx
-  ns
-  nsap
-  ptr
-  rp
-  rrsig
-  soa
-  srv
-  tlsa
-  txt
-  x25
