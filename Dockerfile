FROM cibuilds/hugo AS assetbuilder
ARG AFTERDARK_VERS=9.1.0
COPY . /tmp/site
RUN ["hugo","-d","/var/www","-s","/tmp/site"]
##
FROM nginx:alpine
COPY --from=0 /var/www /usr/share/nginx/html
RUN rm -rf /var/www /tmp/site
