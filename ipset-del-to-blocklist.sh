IPSET=$(which ipset)
$IPSET del blocklist $1 && $IPSET save > ipset.conf && $IPSET list -s
