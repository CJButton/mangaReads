


import React from 'react';

import TopBarContainer from './topbar/topbar_container';


// <header>
//   <Link to="/" className="header-link"><h1>Bench BnB</h1></Link>
//   <Topbar />
// </header>
//
// this is basically a container
// we are wrapping the rest of our routes in it
const App = ({ children }) => (
  <div>
    <TopBarContainer />
    {children}
  </div>
);

export default App;
