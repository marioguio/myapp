FROM ruby:2.3.3

RUN apk update && apk add nodejs build-base libxml2-dev libxslt-dev postgresql postgresql-dev
RUN mkdir /app
WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN gem install bundle --pre

RUN bundle install
COPY . .
