# settings for vagrant user
cp -rf /vagrant/script/templates/iptables /etc/sysconfig/iptables

# settings for httpd
mkdir -p /web/httpd_manavee
chown -R vagrant /web/httpd_manavee
cp -rf /vagrant/script/templates/vh.conf /etc/httpd/conf.d/vh.conf

mkdir -p /var/log/httpd_manavee
chown -R vagrant /var/log/httpd_manavee

groupadd contentsuser
usermod -a vagrant -G contentsuser
usermod -a apache -G contentsuser
chgrp contentsuser -R /var/log/httpd_manavee
chgrp contentsuser -R /web/httpd_manavee
chmod 775 -R /var/log/httpd_manavee
chmod 775 -R /web/httpd_manavee
