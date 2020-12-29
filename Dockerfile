FROM klakegg/hugo:ext-alpine

RUN apk --update add imagemagick 

WORKDIR /src
