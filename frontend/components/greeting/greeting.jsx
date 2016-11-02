

import React from 'react';
import { Link } from 'react-router';

//instead of a link to, let's replace this with two forms
// the first one will be a login form
// the second one will be a signup form
// <Link to="/login" activeClassName="current">Login</Link>
//<Link to="/signup" activeClassName="current">Sign up!</Link>
const sessionLinks = () => (
  <nav className="login-signup">
    <form>
      <input type="text"
             placeholder="Username"
             value="" />
           <input type="text"
                  placeholder="Password"
                  value=""/>
                <button onSubmit="">Login</button>
    </form>
    &nbsp;&nbsp;
    <form>
      <h4>"New here? Create a free account!"</h4>
      <input type="text"
             placeholder="Name"
             value="" />
           <br></br>
           <input type="text"
                  placeholder="Email Address"
                  value="" />
                <br></br>
           <input type="text"
                  placeholder="Password"
                  value=""/>
                <button onSubmit="">Sign Up</button>
    </form>
  </nav>
);

const personalGreeting = (currentUser, logout) => (
	<hgroup className="header-group">
    <h2 className="header-name">Hi, {currentUser.username}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
	</hgroup>
);

const Greeting = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default Greeting;
