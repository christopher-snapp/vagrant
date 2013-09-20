/usr/bin/yum -y clean all

rm -rf /root/*
rm -rf VBoxGuestAdditions_*.iso .*version
rm -f /etc/sysconfig/network-scripts/ifcfg-eth1

# zero out the free space to save space in the final image
for f in /EMPTY /var/EMPTY /usr/EMPTY /home/EMPTY /opt/EMPTY; do
    dd if=/dev/zero of="$f" bs=1M
    rm -f "$f"
done

rm -f $0
