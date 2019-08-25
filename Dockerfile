FROM skyscrapers/hugo:0.46
COPY . /tmp/site
RUN hugo -d /var/www -s /tmp/site
##
FROM nginx
RUN rm -rf /usr/share/nginx/html
COPY --from=0 /var/www /usr/share/nginx/html
