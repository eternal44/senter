import React from 'react'
import {render} from 'react-dom'
import {Provider} from 'react-redux'
import {createStore, applyMiddleware} from 'redux'
import configureStore from './store/configureStore'

import App from './components/App'
import reducers from './reducers'

const createStoreWithMidddleware = applyMiddleware()(createStore)

render(
  <Provider store={createStoreWithMidddleware(reducers), configureStore()}>
    <App />
  </Provider>,
  document.getElementById('root')
)
