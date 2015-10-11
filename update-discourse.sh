#!/bin/bash
cd ~/discourse/plugins/
find . -maxdepth 1 -mindepth 1 -type d -exec sh -c 'cd $0; echo $0; git pull;' {} \;
cd ~/discourse
bundle install
bundle exec rake db:migrate
rm -Rf tmp/cache/assets