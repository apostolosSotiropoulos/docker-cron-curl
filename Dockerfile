FROM gliderlabs/alpine
RUN apk add --update \
    curl
ADD cronjobs .
ADD runit.sh /config/
CMD ["/config/runit.sh", "cronjobs"]
