

import React from 'react';
import { Link } from 'react-router';

import logout from '../../actions/session_actions';

import {hashHistory} from 'react-router';

class TopBar extends React.Component{
  constructor(props) {
    super(props);

    this.handleLogout = this.handleLogout.bind(this);
  }

  handleSearch(e) {
    e.preventDefault();
    // comlete after creating component
  }

  handleMyManga(e) {
    e.preventDefault();
    hashHistory.push("/my-Manga");
  }

  handleProfile(e) {
    e.preventDefault();
    // complete after creating component
  }

  handleHome(e) {
    e.preventDefault();
    hashHistory.push("/");
  }

  handleLogo(e) {
    e.preventDefault();
    hashHistory.push("/");
  }


  handleLogout(e) {
    e.preventDefault();
    this.props.logout();
  }

  render() {
    return (
      <header className="topbar-header">
        <nav className="topbar-nav">

          <div className="topbar-left">
            <div className="topbar-logo button" onClick={this.handleLogo}></div>
            <input className="topbar-home-button button" type="submit"
              onClick={this.handleHome} value="Home" />
            <input className="topbar-myManga-button button" type="submit"
              onClick={this.handleMyManga} value="MyManga" />
          </div>

          <div className="topbar-right">
            <input className="topbar-logout-button button" type="submit"
              onClick={this.handleLogout} value="Logout"/>
          </div>
        </nav>
      </header>

    );
  }
}


export default TopBar;
