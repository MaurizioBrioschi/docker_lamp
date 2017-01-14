FROM nimmis/apache-php5
MAINTAINER Maurizio Brioschi <maurizio.brioschi@gmail.com>
RUN apt-add-repository ppa:brightbox/ruby-ng && \
  add-apt-repository ppa:openjdk-r/ppa -y
RUN apt-get update && apt-get install -y --force-yes \
  curl \
  wget \
  python-software-properties \

###############################
# Nodejs
##############################
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get install -y nodejs \
  build-essential
RUN ln -s `which nodejs` /usr/bin/node
#################################
# Ruby 2
#################################
RUN apt-get install ruby2.2 ruby2.2-dev -y --force-yes

#################################
# Java JDK
#################################
RUN apt-get install openjdk-8-jre -y --force-yes

#enable apache2 url rewrite
RUN a2enmod rewrite
CMD /usr/sbin/apache2ctl -D FOREGROUND
