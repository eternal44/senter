import React from 'react'
import {Redirect, Route, IndexRoute} from 'react-router'

import App from './components/App'
import VotableCard from './containers/votable-card'
import Instructions from './components/instructions'
import About from './components/about'
import Login from './components/login'

export default (
  <Route path="/" component={App}>
    <Redirect from="/" to="login" />
    <IndexRoute component={VotableCard} />
    <Route path="instructions/" component={Instructions} />
    <Route path="about/" component={About} />
  </Route>
)
