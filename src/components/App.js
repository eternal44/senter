import React from 'react';
import { Link } from 'react-router';
import { version } from '../../package.json';

const App = ({ children }) => (
  <div>
    <header>
      <h1>Senter</h1>
    </header>
    <section>
      {children || 'Go away'}
    </section>
  </div>
);

App.propTypes = { children: React.PropTypes.object };

export default App;
