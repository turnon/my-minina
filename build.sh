#!/bin/sh

ln -s /from/_posts /app/_posts \
  && ln -s /from/files /app/assets/files \
  && ln -s /to /app/_site \
  && jekyll build \
  && find /app/_site/ -exec chown $OWN {} \;
