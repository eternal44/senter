# senter [![Build Status](https://travis-ci.org/eternal44/senter.svg?branch=develop)](https://travis-ci.org/eternal44/senter)

## Summary
Think: Pinterest meets Tinder.  See what other people think about items you want to buy or build.

##### Server-side
- Node, Express, PostgreSQL
- Tape, Browserify, NPM scripts

##### Client-side
- React, Redux, React-Router

##### Architecture
- Network requests to store votes are batched to reduce traffic.
- RESTful API.


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

#### Stage One (status: complete)
- Build MVP
- Scaffold basic architecture

#### Stage Two: (status: building)
- User authentication
- User-specific voting
- Import items for voting (ex: Pinterest)

#### Stage Three: (status: planning)
- Machine learning to curate items to vote on.
- Weighted voting system to give trend setters a bigger vote.
- Microservices.

