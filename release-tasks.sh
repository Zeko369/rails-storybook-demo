#!/bin/sh

yarn build-storybook  -o ./public/docs
mv ./public/docs/iframe.html ./public