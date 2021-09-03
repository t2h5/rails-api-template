FROM ruby:2.7.4

WORKDIR /rails-api-template
COPY Gemfile Gemfile.lock ./
RUN bundle install
