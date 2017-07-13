FROM ruby:2.4-alpine

RUN apk add --no-cache --virtual .ruby-builddeps autoconf bison gcc g++ make glib-dev libc-dev zlib-dev \
    && gem install redmon --no-rdoc --no-ri \
    && apk del --purge .ruby-builddeps \
    && apk add --no-cache --virtual .redmon_requires libstdc++

EXPOSE 4567

ENTRYPOINT ["redmon", "-p", "4567", "-a", "0.0.0.0"]
