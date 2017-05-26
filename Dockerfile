FROM python:2.7.13-alpine

RUN apk add --no-cache --virtual .install-deps \
    gcc \
    libc-dev \
    openssl-dev \
    libffi-dev && \
    pip install "elastalert==0.1.14" && \
    pip install "setuptools>=11.3" && \
    pip install "elasticsearch<3.0.0" && \
    apk del .install-deps


COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY config /config

VOLUME /rules
VOLUME /config

ENTRYPOINT /docker-entrypoint.sh
