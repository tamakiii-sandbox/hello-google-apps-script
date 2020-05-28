FROM node:14.3.0

WORKDIR /usr/local/app/hello-google-apps-script

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      make \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*