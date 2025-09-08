FROM openresty/openresty:alpine-fat

RUN apk add --no-cache curl unzip lua-cjson

RUN opm get zmartzone/lua-resty-openidc=1.7.4 \
 && opm get ledgetech/lua-resty-http \
 && opm get bungle/lua-resty-session

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 80 443
CMD ["openresty", "-g", "daemon off;"]