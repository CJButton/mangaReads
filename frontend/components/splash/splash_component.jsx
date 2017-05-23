

import React from 'react';
import { Link } from 'react-router';
import {
  Grid,
  Row,
  Col,
  Image,
} from 'react-bootstrap';


class SplashComponent extends React.Component{
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
    const password = "password";
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


	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

  renderErrors() {

    if (this.props.errors.length > 0) {
      return(
          <div className="errorsContainer">
            <ul>
              {this.props.errors.map((error, idx) => (
                <li key={idx} className="errorMessage">
                  {error}
                </li>
              ))}
            </ul>
          </div>
      );
    } else {
      return (
        <div className="splash-errorsBG-hidden">


        </div>
      )
  }
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }


  render() {
    const {username, password1, name, email, password2} = this.state;

    return (
    <nav className="login-signup">

      <div className="captioned-gallery">
      	<figure className="slider">
          <figure>
            <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493522731/cropped-1920-1200-741091_1_eyomdd.jpg" alt/>
            <figcaption>One Punch Man</figcaption>
          </figure>
          <figure>
            <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493502077/cropped-1920-1200-451608_v8lzqm.jpg" alt/>
            <figcaption>Attack on Titan</figcaption>
          </figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493502076/cropped-1920-1200-109375_bmkmet.jpg" alt/>
      			<figcaption>Ruroni Kenshin</figcaption>
      		</figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493502078/cropped-1920-1200-474477_a2qnlp.jpg" alt/>
      			<figcaption>Dragonball</figcaption>
      		</figure>
          <figure>
            <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493522731/cropped-1920-1200-741091_1_eyomdd.jpg" alt/>
            <figcaption>One Punch Man</figcaption>
          </figure>
      	</figure>
      </div>

      <Row className="splash-top-row">

        <Col md={3}>
          <div className="logo"/>
        </Col>

        <Col md={4}>
          {this.renderErrors()}
        </Col>

        <Col md={5}>
          <div className="login-form-wrapper">
            <form className="loginForm" onSubmit={this.handleLogin}>
              <input type="text"
                placeholder="Username"
                value={username}
                onChange={this.update("username")}/>

              <input type="password"
                placeholder="Password"
                value={password1}
                onChange={this.update("password1")}/>
              <br></br>

              <div className="loginButtons">

                <input className="auth-login-button button"
                  type="submit" value="Login"/>
                &nbsp;

                </div>
              </form>
            </div>

        </Col>

      </Row>






      <div className="signUpBody">
        <div className="mottoContainer">
          <h3 className="mottoSplash">
            There is more to Japan than sushi and samurai.
          </h3>
          <div className="mottoSplashbottom">There's also comic books!</div>
          <p className="mottoSubSplash">
            Action, adventure, romance, a slice-of-life, and more! You'll
            find it all in these comics from Japan. Organize your collection,
            and find new comics to enjoy, here with mangaReads!
          </p>
        </div>

        <div className="splash-signUp-middle">


        </div>

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

          <button className="submitButton button"
                  type="submit"
                  placeholder="Sign up">
            Sign Up</button>

          <button className="guestLogin button" type="submit"
                  onClick={this.handleGuest}
                  value="Guest Login">Guest Login</button>

        </form>


        <footer className="splash-footer" target="_blank">
          <a href="https://www.linkedin.com/in/cjbutton">
            <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493527968/In-2CRev-14px_npyzzk.png"/>
          </a>

          <a href="https://github.com/CJButton" target="_blank">
            <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493520070/GitHub_Logo_k7corb.png"/>
          </a>


        </footer>

      </div>
    </nav>
    );
  }
}

// <section>
//
//   <Grid fluid>
//
//     <Col sm={4}>
//       <div className="logo"/>
//     </Col>
//
//     <Col sm={4}>
//       {this.renderErrors()}
//     </Col>
//
//     <Col sm={4}>
//       <div className="login-form-wrapper">
//         <form className="loginForm" onSubmit={this.handleLogin}>
//           <input type="text"
//             placeholder="Username"
//             value={username}
//             onChange={this.update("username")}/>
//
//           <input type="password"
//             placeholder="Password"
//             value={password1}
//             onChange={this.update("password1")}/>
//           <br></br>
//
//           <div className="loginButtons">
//
//             <input className="auth-login-button button"
//               type="submit" value="Login"/>&nbsp;
//
//             </div>
//           </form>
//         </div>
//     </Col>
//
//   </Grid>
// </section>

export default SplashComponent;
