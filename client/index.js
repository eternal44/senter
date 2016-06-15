import React from 'react'
import {render} from 'react-dom'
import {Provider} from 'react-redux'
import {Router, hashHistory} from 'react-router'
import routes from './routes'
import {createStore, applyMiddleware} from 'redux'
import configureStore from './store/configureStore'

import App from './components/App'

const store = configureStore()

render(
  <Provider store={store}>
    <Router history={hashHistory} routes={routes} />
  </Provider>,
  document.querySelector('.container')
)
