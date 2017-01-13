FROM nimmis/apache-php5
MAINTAINER Maurizio Brioschi <maurizio.brioschi@gmail.com>
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
