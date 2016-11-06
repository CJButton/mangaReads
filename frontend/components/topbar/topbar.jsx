

import React from 'react';
import { Link } from 'react-router';

import logout from '../../actions/session_actions';

class TopBar extends React.Component{
  constructor(props) {
    super(props);

    this.handleLogout = this.handleLogout.bind(this);
  }

  handleSearch(e) {
    e.preventDefault();
    // finish after css for topbar

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
            <li>
              <input className="topbar-profile-button" type="submit"
                onClick={this.handleProfile} value="" />
            </li>
          </ul>

        </nav>
      </header>

    );
  }
}


export default TopBar;
