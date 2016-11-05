

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
    this.props.router.push("/");
  }

  handleSignup(e) {
    e.preventDefault();
    const username = this.state.name;
    const email = this.state.email;
    const password = this.state.password2;
    const newUser = {user: {username, password, email}};
    this.props.signup(newUser);
  }

  componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

  renderErrors() {
    if (this.props.errors){
    return(
      <ul>
        {this.props.errors.map((error) => (
          <li className="errorMessage">
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

        <div className="headerNav">

          <h3 className="logo">MangaReads</h3>

        {this.renderErrors()}

          <form className="loginForm" onSubmit={this.handleLogin}>
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


            <input className="guestLogin" type="submit" onSubmit={this.handleGuest}
              value="Guest Login" />
          </form>

        </div>

      &nbsp;&nbsp;
      <div className="signUpBody">
        <h3 className="mottoSplash">
          Discover Japan through comics.
        </h3>
        <form className="signUpForm" onSubmit={this.handleSignup}>
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

          <input className="submitButton"type="submit" placeholder="Sign up"/>

          <input className="submitButton" type="submit" value="Guest Login" onSubmit={this.handleGuest}/>
        </form>
      </div>
    </nav>
    );
  }
}

export default AuthForm;
