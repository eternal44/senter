import React from 'react'
import {Route, IndexRoute} from 'react-router'

import App from './components/App'
import VotableCard from './containers/votable-card'
import Instructions from './components/instructions'

export default (
  <Route path="/" component={App}>
    <IndexRoute component={VotableCard} />
    <Route path="instructions/" component={Instructions} />
  </Route>
)
