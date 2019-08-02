#!/bin/sh

ln -s /from/_posts /app/_posts \
  && ln -s /from/files /app/assets/files \
  && ln -s /to /app/_site \
  && jekyll build \
  && owner=`ls -ld /from | awk '{printf "%s:%s", $3, $4}'` \
  && find /app/_site/ -exec chown $owner {} \;
