#!/usr/bin/env bash
set -ex

#yb setup
export DEBIAN_FRONTEND=noninteractive
gem install bundler -v '< 2.0'

#before_install:
gem update --system
gem update bundler
gem pristine bundler
gem cleanup bundler

# install
bundle install --jobs 8

#script
bundle exec rake
