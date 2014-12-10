#!/bin/bash
cd ~/discourse
bundle exec rake db:drop db:create db:migrate
