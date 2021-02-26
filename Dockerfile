FROM php:7.4-alpine

# Install production dependencies
RUN apk add --no-cache \
    git \
    openssh-client

# Install Deployer
RUN curl -LO https://deployer.org/deployer.phar && mv deployer.phar /usr/local/bin/dep && chmod +x /usr/local/bin/dep

# Cleanup dev dependencies
#RUN apk del -f .build-deps

# Setup working directory
WORKDIR /var/www