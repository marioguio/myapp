FROM ruby:2.3.3


RUN mkdir /app
WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN gem install bundle --pre

RUN gem install uglifier

RUN bundle install
COPY . .
