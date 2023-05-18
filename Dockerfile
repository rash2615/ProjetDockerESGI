FROM alpine:3.14

RUN apk --no-cache add php7 php7-pdo php7-pdo_pgsql php7-json postgresql-client

WORKDIR /app

COPY . /app

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80"]
