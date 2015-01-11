sh /vagrant/script/install/vagrant/install-keys.sh
sh /vagrant/script/install/vagrant/install-application.sh

private=/vagrant/script/install/vagrant/install-private.sh
if [ -f $private ]; then
    sh $private
fi
