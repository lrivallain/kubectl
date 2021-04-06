FROM alpine:latest

# Pre-requisites + envsubst(via gettext)
RUN apk --update upgrade && \
    apk add ca-certificates gettext curl && \
    rm -rf /var/cache/apk/* 

# Latest stable version
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl > /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

