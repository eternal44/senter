import React from 'react';

const App = ({children}) => (
  <div>
    <header>
      <h1>Senter</h1>
    </header>
    <section>
      {children || 'Go away'}
    </section>
  </div>
);

App.propTypes = {children: React.PropTypes.object};

export default App;
