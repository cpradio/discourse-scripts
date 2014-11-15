#!/bin/bash
cd ~/discourse/plugins/discourse-theme
git pull
cd ~/discourse/plugins/discourse-plugin-tagger
git pull
cd ~/discourse
bundle install
bundle exec rake db:migrate
rm -Rf tmp/cache/assets