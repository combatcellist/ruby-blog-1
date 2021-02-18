FROM ruby:2.6.3

RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs           


RUN mkdir /blog-app

WORKDIR /blog-app

COPY ./Gemfile /blog-app/Gemfile
COPY ./Gemfile.lock /blog-app/Gemfile.lock


RUN bundle install
COPY . /blog-app