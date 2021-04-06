FROM alpine:latest
RUN apk --update upgrade && \
    apk add ca-certificates gettext && \
    rm -rf /var/cache/apk/* && \
    curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl > /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

