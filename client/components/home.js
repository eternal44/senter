import React from 'react';
import {Link} from 'react-router';

const Home = ({children}) => (
  <div>
    <header>
      <h1>Hello World from Senter</h1>
    </header>
    <section>
      {children || 'Welcome to Senter'}
    </section>
  </div>
);

Home.propTypes = {children: React.PropTypes.object};

export default Home;
