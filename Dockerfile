FROM alpine:3.14.4

RUN apk add curl

ARG PROTOLINT_VERSION
RUN curl -LO https://github.com/yoheimuta/protolint/releases/download/v${PROTOLINT_VERSION}/protolint_${PROTOLINT_VERSION}_linux_amd64.tar.gz \
    && tar xf protolint_${PROTOLINT_VERSION}_linux_amd64.tar.gz \
    && chmod +x protolint \
    && mv protolint /usr/local/bin/protolint
