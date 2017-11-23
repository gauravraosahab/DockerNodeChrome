# Getting node image
FROM node:9.1.0

# Install Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
&&  sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
&&  apt-get update \
&&  apt install -y \
        dbus-x11 \
        google-chrome-stable \
        wget \
        xvfb

ENV CHROME_BIN /usr/bin/google-chrome
