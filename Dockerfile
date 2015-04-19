FROM ruby:2.0

# updates
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /wookiebookie
WORKDIR /wookiebookie

ADD Gemfile /wookiebookie/Gemfile
ADD Gemfile.lock /wookiebookie/Gemfile.lock

RUN bundle install

ADD . /wookiebookie
