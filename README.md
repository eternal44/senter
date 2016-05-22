# senter [![Build Status](https://travis-ci.org/eternal44/senter.svg?branch=develop)](https://travis-ci.org/eternal44/senter)

Dev Installation:
```
npm install babel-cli -g
npm install babel-tape-runner -g
```

Deploy:
Push to the repo's production branch

Load sql files to heroku.  Must have heroku authentication:
heroku pg:psql --app senter < server/db/scripts/schema.sql
heroku pg:psql --app senter < server/db/scripts/mockData.sql



TODO:

SERVERSIDE:
deploy app
make each vote unique - never have someone vote for the same item twice

MACHINE LEARNING:
use Neo4j for unsupervised learning - determine correlations between demographics & votable categories
