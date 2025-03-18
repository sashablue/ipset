# https://linux-audit.com/networking/iptables/blocking-ip-addresses-in-linux-with-iptables/
IPSETCONF=~/ipset/ipset.conf
curl -s https://raw.githubusercontent.com/sashablue/ipset/refs/heads/master/ipset.conf -o $IPSETCONF
ipset -exist -file $IPSETCONF restore
iptables -I INPUT -m set --match-set blocklist src -j DROP
iptables -I FORWARD -m set --match-set blocklist src -j DROP
