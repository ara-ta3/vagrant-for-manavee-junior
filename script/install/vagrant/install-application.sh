password=`cat /vagrant/script/keys/password_for_private_key`
expect -c "
set timeout -1
spawn git clone git@github.com:tarata/manavee-for-junior.git /web/httpd_manavee/manavee-for-junior
expect \"Enter passphrase for key '/home/vagrant/.ssh/private_key_for_github':\"
send \"${password}\n\"
expect \"#\"
interact
"
make init -C /web/httpd_manavee/manavee-for-junior
make install -C /web/httpd_manavee/manavee-for-junior
