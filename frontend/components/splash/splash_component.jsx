

import React from 'react';
import { Link } from 'react-router';
import {
  Grid,
  Row,
  Col,
  Image,
  Carousel
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
          <ul>
            {this.props.errors.map((error, idx) => (
              <li key={idx} className="errorMessage">
                {error}
              </li>
            ))}
          </ul>
      );
    }
    else {
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

      {/* Carousel */}
      <div className="hero-carousel-wrapper">
        <Carousel
          indicators={false}
          controls={false}
          interval={2500}>
            <Carousel.Item>
              <div className='hero-carousel-img-wrapper'>
                <img
                  className='hero-carousel-img'
                  src="http://res.cloudinary.com/ddbfkqb9m/image/upload/q_30/cropped-1920-1200-741091_yudxc9.jpg"/>
                <div className='hero-carousel-caption-wrapper'>
                  <p className='hero-carousel-caption'>
                    One Punch Man
                  </p>
                </div>
              </div>
            </Carousel.Item>
            <Carousel.Item>
              <div className='hero-carousel-img-wrapper'>
                <img
                  className='hero-carousel-img'
                  src="http://res.cloudinary.com/ddbfkqb9m/image/upload/q_30/cropped-1920-1200-451608_v8lzqm.jpg"/>
                  <div className='hero-carousel-caption-wrapper'>
                    <p className='hero-carousel-caption'>
                      Attack on Titan
                    </p>
                  </div>
                </div>
            </Carousel.Item>
            <Carousel.Item>
              <div className='hero-carousel-img-wrapper'>
                <img
                  className='hero-carousel-img'
                  src="http://res.cloudinary.com/ddbfkqb9m/image/upload/q_30/cropped-1920-1200-109375_bmkmet.jpg"/>
                  <div className='hero-carousel-caption-wrapper'>
                    <p className='hero-carousel-caption'>
                      Rurouni Kenshin
                    </p>
                  </div>
                </div>
            </Carousel.Item>
            <Carousel.Item>
              <div className='hero-carousel-img-wrapper'>
                <img
                  className='hero-carousel-img'
                  src="http://res.cloudinary.com/ddbfkqb9m/image/upload/q_30/cropped-1920-1200-474477_a2qnlp.jpg"/>
                  <div className='hero-carousel-caption-wrapper'>
                    <p className='hero-carousel-caption'>
                      Dragonball
                    </p>
                  </div>
                </div>
            </Carousel.Item>
        </Carousel>
      </div>

      {/* Items placed on top
        http://res.cloudinary.com/ddbfkqb9m/image/upload/Extras/Logomakr_6eQJJ4.png*/}
      <div className='splash-wrapper'>
        <div className='splash-top-bar'>
          <Col xs={10} xsOffset={1} sm={6} smOffset={0} md={4} mdOffset={1}>
            <img className="logo" src="http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,w_400/Logomakr_46VsDw_by27ya.png"/>
          </Col>

          <Col xs={10} xsOffset={1} sm={6} smOffset={0} md={5} mdOffset={1}>
            <div className="login-form-wrapper">
              <form className="loginForm" onSubmit={this.handleLogin}>
                <div className="splash-login-wrapper">
                  <input type="text"
                    placeholder="Username"
                    value={username}
                    onChange={this.update("username")}/>

                  <input type="password"
                    placeholder="Password"
                    value={password1}
                    onChange={this.update("password1")}/>
                </div>
                <div className="loginButtons">
                  <input className="auth-login-button button"
                    type="submit" value="Login"/>
                  &nbsp;
                </div>
              </form>
            </div>
          </Col>
        </div>

      <Col xs={8} xsOffset={2} sm={4} smOffset={6} md={3} mdOffset={6}
        className="errorsContainer">
        {this.renderErrors()}
      </Col>

      <Col xs={10} xsOffset={1} md={6} mdOffset={1}
        className="mottoContainer">
        <h3 className="mottoSplash">
          There is more to Japan than sushi and samurai.
        </h3>
        <div className="mottoSplashbottom">There's also comic books!</div>
        <p className="mottoSubSplash">
          Action, adventure, romance, a slice-of-life, and more! You'll
          find it all in these comics from Japan. Organize your collection,
          and find new comics to enjoy, here with mangaReads!
        </p>
      </Col>

      <Col xs={8} xsOffset={2} sm={4} smOffset={4} md={3} mdOffset={1}>
        <form className="signUpForm" onSubmit={this.handleSignup}>
          <h4>New here? Create a free account!</h4>

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

          <button className="submitButton button splashButtons"
            type="submit"
            placeholder="Sign up">
            Sign Up</button>

          <button className="guestLogin button splashButtons" type="submit"
            onClick={this.handleGuest}
            value="Guest Login">Guest Login</button>

        </form>
      </Col>

      <footer className="splash-footer">
        <a href="https://www.linkedin.com/in/cjbutton" target="_blank">
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

export default SplashComponent;
