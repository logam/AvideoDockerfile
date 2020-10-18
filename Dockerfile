FROM ubuntu
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
zip \
unzip \
git \
curl \
wget \
python

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
apache2 \
php7.4 \
libapache2-mod-php7.4 \
php7.4-mysql \
php7.4-curl \
php7.4-gd \
php7.4-intl \
mysql-server \
mysql-client \
ffmpeg \
libimage-exiftool-perl\
&& cd /var/www/html \
&& sudo git clone https://github.com/DanielnetoDotCom/YouPHPTube.git \
&& cd /var/www/html \
&& sudo git clone https://github.com/DanielnetoDotCom/YouPHPTube-Encoder.git \
&& sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
&& sudo chmod a+rx /usr/local/bin/youtube-dl \
&& sudo a2enmod rewrite

