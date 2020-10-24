FROM php:7.2-apache
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
unzip \
git \
wget \
python \
ffmpeg \
libimage-exiftool-perl








&& cd /var/www/html \
&& sudo git clone https://github.com/DanielnetoDotCom/YouPHPTube.git \
&& cd /var/www/html \
&& sudo git clone https://github.com/DanielnetoDotCom/YouPHPTube-Encoder.git \
&& sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
&& sudo chmod a+rx /usr/local/bin/youtube-dl \
&& sudo a2enmod rewrite

