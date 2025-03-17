FROM openresty/openresty:alpine-fat

RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-openidc \
    && /usr/local/openresty/luajit/bin/luarocks install lua-resty-http \
    && /usr/local/openresty/luajit/bin/luarocks install lua-cjson

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
EXPOSE 80 443
CMD ["openresty", "-g", "daemon off;"]
