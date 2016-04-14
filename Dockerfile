FROM alpine:3.3

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV TIMEZONE Europe/Kiev

RUN \
    # Install Bash
    apk --no-cache add bash && \

    # Set timezone
    apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \
    apk del tzdata

ENTRYPOINT ["bash"]
