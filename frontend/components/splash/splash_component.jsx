

import React from 'react';
import { Link } from 'react-router';
import Modal from 'react-modal';

class SplashComponent extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password1: "",
      name: "",
      email: "",
      password2: "",
      bgidx: 0
      // background: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg"
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
    if (this.props.errors !== []){
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
   }
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
    //
    // setTimeout(function () {
    //   this.backgrounds();
    // }.bind(this), 4000);
  }

  backgrounds() {
    // let background =
    // ["http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251031/Anime-Dragon-Ball-50-0_djnm3d.jpg",
    // "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251030/Rurouni-Kenshin-TV-Header_u2haug.jpg",
    // "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251032/bebop_ep7hso.jpg",
    // "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg"]
    //
    // let idx = this.state.bgidx;
    // if (idx === 3) {
    //   idx = 0;
    // } else {
    //   idx += 1;
    // }
    //
    // this.setState({
    //   background: background[idx],
    //   bgidx: idx
    // });
  }


  render() {
    const {username, password1, name, email, password2} = this.state;
    // let bg = {backgroundImage: 'url(' + this.state.background + ')'}
    // <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg"/>


          // <div className="splash-slideshow-wrapper">
          //   <figure className="bg-slider">
          //     <figure className="splash-bg">
          //       <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251032/bebop_ep7hso.jpg"/>
          //     </figure>
          //
          //     <figure className="splash-bg">
          //       <img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg"/>
          //     </figure>
          //   </figure>
          //
          // </div>

    return (

    <nav className="login-signup">


      <div id="captioned-gallery">
      	<figure className="slider">
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251032/bebop_ep7hso.jpg" alt/>
      			<figcaption>Hobbiton, New Zealand</figcaption>
      		</figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg" alt/>
      			<figcaption>Wanaka, New Zealand</figcaption>
      		</figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251032/bebop_ep7hso.jpg" alt/>
      			<figcaption>Utah, United States</figcaption>
      		</figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1483340044/splashnew1_lwqq6o.jpg" alt/>
      			<figcaption>Bryce Canyon, Utah, United States</figcaption>
      		</figure>
      		<figure>
      			<img src="http://res.cloudinary.com/ddbfkqb9m/image/upload/v1493251032/bebop_ep7hso.jpg" alt/>
      			<figcaption>Hobbiton, New Zealand</figcaption>
      		</figure>
      	</figure>
      </div>







        <div className="headerNav">

          <div className="logo"></div>

        {this.renderErrors()}

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
                                    type="submit" value="Login"/>&nbsp;

          </div>
          </form>
        </div>



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
      </div>
    </nav>
    );
  }
}

export default SplashComponent;
