

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
    console.log("Did we hit home?");
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

          <ul className="topbar-list-left">
            <div className="topbar-logo"></div>
            <li>
              <input className="topbar-myManga-button" type="submit"
                onClick={this.handleMyManga} value="MyManga" />
            </li>
            <li>
              <input className="topbar-home-button" type="submit"
                onClick={this.handleHome} value="Home" />
            </li>
          </ul>
            <li>
              <input type="text" placeholder="Search Manga"
                onClick={this.handleSearch} className="topbar-search" />
            </li>
          <ul className="topbar-list-right">
            <li>
            <input className="topbar-logout-button" type="submit"
              onClick={this.handleLogout} value="Logout"/>
          </li>
          </ul>

        </nav>
      </header>

    );
  }
}


export default TopBar;
