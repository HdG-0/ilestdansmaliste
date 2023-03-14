FROM alpine:latest

RUN apk update && \
    apk add hugo

COPY . /app

EXPOSE 1313

WORKDIR /app

RUN hugo

CMD ["hugo", "serve", "--noHTTPCache", "--appendPort=false", "--bind=0.0.0.0", "--baseURL=/","--environment", "production"]