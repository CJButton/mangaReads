

import React from 'react';
import { Link } from 'react-router';

import logout from '../../actions/session_actions';
import { hashHistory } from 'react-router';

class TopBar extends React.Component{
  constructor(props) {
    super(props);

    this.handleLogout = this.handleLogout.bind(this);
  }


  handleLogout(e) {
    console.log("in handleLogout");
    e.preventDefault();
    this.props.logout();
  }

  render() {
    return (
      <div className="topbar-container">
        <ul className="topbar-ul">
          <li>漫画読もう！</li>
          <li>
            <Link to={`/`}>Home</Link>
          </li>
          <li>初めまして！</li>
          <input className="logout-button" type="submit"
            onClick={this.handleLogout} value="Logout"/>
          </ul>
        </div>

    );
  }
}


export default TopBar;
