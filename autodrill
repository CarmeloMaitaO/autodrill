#!/bin/sh

# Default values
dns="1.1.1.1"
file=""

# Errors
write="Either the directory doesn't exist or you don't have the necessary \
	permisions"

# Allowed options
OPTSTRING='d:o:'

syntax(){
	echo "Use:"
	echo "	autodrill.sh [options] <domain>"
	echo "Options:"
	echo "	-d <dns>:	Select a DNS (default: 1.1.1.1)"
	echo "	-o <file>:	Select an output file"
}

# Options
while getopts $OPTSTRING options
do
	case $options in
		d)
			dns=$OPTARG
			;;
		o)
			file=$OPTARG
			if touch $file 2>&-
			then
				:
			else
				echo $write
				syntax
				return 1
			fi
			;;
		\?)
			syntax
			return 1;
			;;
	esac
done
shift `expr $OPTIND - 1`
domain="$1"
if test $# -gt 1 -o $# -lt 1
then
	syntax
	return 1
fi

present () {
	echo "#############" $@
}
obtain () {
	present drill $domain @$dns $1
	drill $domain @$dns $1
}

execute () {
	obtain a
	obtain aaaa
	obtain afsdb
	obtain atma
	obtain caa
	obtain cert
	obtain cname
	obtain dhcid
	obtain dname
	obtain dnskey
	obtain ds
	obtain hinfo
	obtain isdn
	obtain mb
	obtain mg
	obtain minfo
	obtain mr
	obtain mx
	obtain ns
	obtain nsap
	obtain ptr
	obtain rp
	obtain rrsig
	obtain soa
	obtain srv
	obtain tlsa
	obtain txt
	obtain x25
}

if test $file
then
	execute $1 > $file
else
	execute $1
fi
