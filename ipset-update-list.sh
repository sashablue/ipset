IPSETCONF=~/ipset/ipset.conf
curl -s https://raw.githubusercontent.com/sashablue/ipset/refs/heads/master/ipset.conf -o $IPSETCONF
ipset flush
ipset -exist -file $IPSETCONF restore
