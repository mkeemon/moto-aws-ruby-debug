FROM ruby:3.2.2


ENV APP_ROOT /app
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

RUN gem install bundler
ADD Gemfile* $APP_ROOT/
RUN bundle install

ADD . $APP_ROOT

CMD ["ruby", "/app/test-sqs.rb"]
