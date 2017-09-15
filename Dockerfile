# base on latest ruby base image
FROM ruby:2.3.3



# setup app folders
RUN mkdir /app
WORKDIR /app

# copy over Gemfile and install bundle
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN gem install bundle --pre 
RUN bundle install --jobs 20 --retry 5

Add . /app
