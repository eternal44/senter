# senter [![Build Status](https://travis-ci.org/eternal44/senter.svg?branch=develop)](https://travis-ci.org/eternal44/senter)

## Dev Installation:
```
npm install babel-cli -g
npm install gulp-cli -g
npm install babel-tape-runner -g
```

## Deploy:
Push to the production branch and load sql files to heroku.  You must have heroku authentication:

```bash
heroku pg:psql --app senter < server/db/scripts/schema.sql
heroku pg:psql --app senter < server/db/scripts/mockData.sql
```

## Roadmap
I'll be working with new technology and experimenting with different design patterns and architectures.  If you'd like to suggest changes or additions I'd be more than happy to talk about them!
