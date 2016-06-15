import React from 'react'
import {Route, IndexRoute} from 'react-router'

import App from './components/App'
import VotableCard from './containers/votable-card'
import Instructions from './components/instructions'
import About from './components/about'

export default (
  <Route path="/" component={App}>
    <IndexRoute component={VotableCard} />
    <Route path="instructions/" component={Instructions} />
    <Route path="about/" component={About} />
  </Route>
)
