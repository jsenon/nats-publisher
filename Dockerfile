FROM alpine:latest

RUN apk add --no-cache bash curl wget
RUN addgroup -g 1000 -S www-user && \
    adduser -u 1000 -S www-user -G www-user

ADD nats-publisher /
USER www-user
CMD ["./nats-publisher"]