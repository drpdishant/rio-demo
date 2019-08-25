FROM cibuilds/hugo AS assetbuilder
ARG AFTERDARK_VERS=9.1.0
COPY . /tmp/site
CMD ["hugo","serve","--disableLiveReload","--buildDrafts","--bind","0.0.0.0","--port","8080","--source","/tmp/site"]
