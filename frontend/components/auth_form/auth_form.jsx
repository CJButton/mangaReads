

import React from 'react';
import { Link } from 'react-router';


class AuthForm extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password1: "",
      name: "",
      email: "",
      password2: ""
    };

    this.handleLogin = this.handleLogin.bind(this);
    this.handleSignup = this.handleSignup.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
  }

  update(property) {
    return e => this.setState({[property]: e.target.value});
  }

  handleGuest(e) {
    e.preventDefault();
    const username = "Guest";
    const password = "123456";
    const user = {user: {username, password}};
    this.props.login(user);
  }

  handleLogin(e) {
    e.preventDefault();
    const username = this.state.username;
    const password = this.state.password1;
    const user = {user: {username, password}};
    this.props.login(user);
  }

  handleSignup(e) {
    e.preventDefault();
    const username = this.state.name;
    const email = this.state.email;
    const password = this.state.password2;
    const newUser = {user: {username, password, email}};
    this.props.signup(newUser);
  }

  // how can I display errors better?
  // the current system is not ideal
  renderErrors() {
    if (this.props.errors){
    return(
      <ul>
        {this.props.errors.map((error) => (
          <li id="errorMessage">
            {error}
          </li>
        ))}
      </ul>
    );
   }
  }

  render() {
    const {username, password1, name, email, password2} = this.state;

    return (
    <nav className="login-signup">

        <div id="headerNav">

          <h3 id="logo">MangaReads</h3>

        {this.renderErrors()}

          <form id="loginForm" onSubmit={this.handleLogin}>
            <input type="text"
              placeholder="Username"
              value={username}
              onChange={this.update("username")}/>

            <input type="text"
              placeholder="Password"
              value={password1}
              onChange={this.update("password1")}/>

            <br>
            </br>
            <input type="submit" value="Login"/>&nbsp;


            <input id="guestLogin" type="submit" onSubmit={this.handleGuest}
              value="Guest Login" />
          </form>

        </div>

      &nbsp;&nbsp;
      <div id="signUpBody">
        <h3 id="mottoSplash">
          Discover Japan through comics.
        </h3>
        <form id="signUpForm" onSubmit={this.handleSignup}>
          <h4>"New here? Create a free account!"</h4>

          <input type="text"
            placeholder="Name"
            value={name}
            onChange={this.update("name")} />
          <input type="text"
            placeholder="Email Address"
            value={email}
            onChange={this.update("email")} />
          <input type="password"
            placeholder="Password"
            value={password2}
            onChange={this.update("password2")}/>

          <input id="signUpButton" type="submit" placeholder="Sign up"/>

          <input id="guetLoginButton" type="submit" value="Guest Login" onSubmit={this.handleGuest}/>
        </form>
      </div>
    </nav>
    );
  }
}

export default AuthForm;
