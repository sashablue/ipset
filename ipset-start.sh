# https://linux-audit.com/networking/iptables/blocking-ip-addresses-in-linux-with-iptables/
git pull
ipset -exist -file ipset.conf restore
iptables -I INPUT -m set --match-set blocklist src -j DROP
iptables -I FORWARD -m set --match-set blocklist src -j DROP
