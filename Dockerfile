FROM mcr.microsoft.com/vscode/devcontainers/php:0-8

# Install Laravel dependencies
RUN composer global require laravel/installer

# Ensure composer dependencies are available in $PATH
ENV PATH="/root/.composer/vendor/bin:${PATH}"

# Install Node.js and NPM
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
