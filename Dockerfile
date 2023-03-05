FROM node:lts-alpine

RUN apk --update --upgrade --no-cache add pandoc weasyprint fontconfig ttf-freefont && fc-cache -fv

LABEL org.opencontainers.image.source=https://github.com/ixth/pandoc-weasyprint-container

ENTRYPOINT ["pandoc"]

