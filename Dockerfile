# syntax=docker/dockerfile:1
FROM ruby:3.0.0-slim

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  build-essential libpq-dev nodejs less vim

WORKDIR /deploy-fly

COPY Gemfile /deploy-fly/Gemfile
COPY Gemfile.lock /deploy-fly/Gemfile.lock

RUN bundle install 

EXPOSE 8080
