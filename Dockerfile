FROM ruby:2.7.1

WORKDIR /rails-api-template
COPY Gemfile Gemfile.lock ./
RUN bundle install
