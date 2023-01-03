#!/bin/sh

bundle exec rake storybook_rails:write_stories_json

export NODE_OPTIONS=--openssl-legacy-provider
yarn build-storybook  -o ./public/docs

mv ./public/docs/iframe.html ./public