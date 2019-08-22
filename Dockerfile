FROM cibuilds/hugo AS assetbuilder
ARG AFTERDARK_VERS=9.1.0
COPY . /tmp/site
RUN ["rm","-rf","/tmp/site/themes/after-dark/*"]
ADD https://registry.npmjs.org/after-dark/-/after-dark-$AFTERDARK_VERS.tgz /var/tmp
RUN tar --strip-components=1 -xzf /var/tmp/after-dark-$AFTERDARK_VERS.tgz -C /tmp/site/themes/after-dark
RUN ["hugo","-d","/var/www","-s","/tmp/site"]
CMD ["hugo","serve","--disableLiveReload","--buildDrafts","--bind","0.0.0.0","--port","8080"]
