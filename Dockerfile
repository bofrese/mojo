FROM scottw/alpine-perl:5.32.0
ENV http_proxy=http://ipproxy.dsb.dk:80/
RUN apk update
RUN apk add expat-dev
RUN apk add graphviz
RUN apk add perl-io-socket-ssl
RUN apk add build-base 
RUN apk add openssl 
RUN apk add openssl-dev 
RUN apk add zlib-static
RUN apk add openssh-client
RUN cpanm --force Net::SSLeay 
RUN cpanm IO::Socket::SSL
RUN cpanm DateTime 
RUN cpanm --force XML::Simple
RUN cpanm Text::CSV
RUN cpanm Try::Tiny
RUN cpanm DateTime::Format::ISO8601
RUN cpanm DateTime::Format::Human::Duration
RUN cpanm SRI/Mojolicious-9.18.tar.gz 
RUN cpanm ETJ/GraphViz2-2.66.tar.gz
RUN cpanm Cpanel::JSON::XS
EXPOSE 3000
COPY . /app
WORKDIR /app
# Trick to keep the Docker instance running.... 
# Replace with something like: CMD morbo -v myapp.pl
CMD tail -f /dev/null