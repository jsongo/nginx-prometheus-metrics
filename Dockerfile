FROM openresty/openresty:alpine

MAINTAINER Sophos <hnlq.sysu@gmail.com>

VOLUME /etc/nginx

COPY nginx.conf.default         /usr/local/openresty/nginx/conf/nginx.conf
COPY *.conf            /etc/nginx/conf.d/
COPY lib/prometheus.lua /usr/local/openresty/luajit/lib

RUN nginx -t
