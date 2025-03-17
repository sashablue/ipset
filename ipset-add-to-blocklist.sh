IPSET=$(which ipset)
$IPSET add blocklist $1 && $IPSET -f ipset.conf save && $IPSET list -s | sed "s/$1/$1 <==/"
