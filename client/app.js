import React from 'react';
import {render} from 'react-dom';
import {Router, Route, hashHistory} from 'react-router';
import Home from './components/home';

window.React = React;

render(
  (<Router history={hashHistory}>
     <Route path="/" component={Home}>
     </Route>
   </Router>
  ), document.getElementById('content')
);
