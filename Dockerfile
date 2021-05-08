FROM ruby:2.7.2

WORKDIR /rails-api-template
COPY Gemfile Gemfile.lock ./
RUN bundle install
