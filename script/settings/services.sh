for s in httpd mysqld iptables; do
    chkconfig $s on
    service $s restart
done

service ntpd stop
ntpdate ntp.nict.jp
service ntpd start
