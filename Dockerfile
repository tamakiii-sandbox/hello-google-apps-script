FROM node:14.3.0 AS production-pseudo

WORKDIR /usr/local/app/hello-google-apps-script

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      make \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# --

FROM production-pseudo AS development

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      vim \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*