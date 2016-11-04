


import React from 'react';


// <header>
//   <Link to="/" className="header-link"><h1>Bench BnB</h1></Link>
//   <Topbar />
// </header>
//
// this is basically a container
// we are wrapping the rest of our routes in it
const App = ({ children }) => (
  <div>
    Hello from App
    {children}
  </div>
);

export default App;
