# settings for vagrant user
cp -rf /vagrant/script/templates/iptables /etc/sysconfig/iptables

# settings for httpd
mkdir -p /web/httpd_manavee
chown -R vagrant /web/httpd_manavee
cp -rf /vagrant/script/templates/vh.conf /etc/httpd/conf.d/vh.conf

mkdir -p /var/log/httpd_manavee
chown -R vagrant /var/log/httpd_manavee

if [ `cat /etc/group|grep "contentsuser" 2>&1 > /dev/null;echo $?` -gt 0 ]; then
    groupadd contentsuser
fi
usermod -a -G contentsuser vagrant 
usermod -a -G contentsuser apache
chgrp contentsuser -R /var/log/httpd_manavee
chgrp contentsuser -R /web/httpd_manavee
chmod 775 -R /var/log/httpd_manavee
chmod 775 -R /web/httpd_manavee

# settings for mysql
mkdir -p /var/log/mysql/
usermod -a -G contentsuser mysql
chmod 775 -R /var/log/mysql
chown mysql:contentsuser -R /var/log/mysql
