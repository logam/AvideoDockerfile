FROM php:7.4-apache
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
git \
wget \
python \
ffmpeg \
libimage-exiftool-perl








&& cd /var/www/html \
&& git clone https://github.com/DanielnetoDotCom/YouPHPTube.git \
&& cd /var/www/html \
&& git clone https://github.com/DanielnetoDotCom/YouPHPTube-Encoder.git \
&& curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
&& chmod a+rx /usr/local/bin/youtube-dl \
&& a2enmod rewrite

