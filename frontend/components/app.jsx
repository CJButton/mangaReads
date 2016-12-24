


import React from 'react';
import TopBarContainer from './topbar/topbar_container';


const App = ({ children }) => (
  <div>
    <TopBarContainer />
    {children}
  </div>
);

export default App;
