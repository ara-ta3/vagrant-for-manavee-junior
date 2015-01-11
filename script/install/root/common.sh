rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-11.ius.centos6.noarch.rpm
yum update -y
yum install -y make gcc pcre-devel rrdtool-devel libpng-devel openssl-devel openldap-devel wget httpd zsh ntpdate ntp cronolog svn tree crontabs cronolog tmpwatch man

