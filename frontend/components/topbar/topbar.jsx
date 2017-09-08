

import React from 'react';
import { Link } from 'react-router';

import { Nav,
         Navbar,
         NavItem,
         NavDropdown} from 'react-bootstrap';

import {hashHistory} from 'react-router';

class TopBar extends React.Component{
  constructor(props) {
    super(props);

    this.handleLogout = this.handleLogout.bind(this);
    this.handleSelect = this.handleSelect.bind(this);
  }

  handleMyManga(e) {
    e.preventDefault();
    hashHistory.push("/my-Manga");
  }

  handleHome(e) {
    e.preventDefault();
    hashHistory.push("/");
  }

  handleLogo(e) {
    e.preventDefault();
    hashHistory.push("/");
  }

  handleLogout() {
    this.props.logout();
  }

  handleSelect(e) {
    e === 1 ? hashHistory.push('/my-Manga') : this.handleLogout()
  }

  render() {
    return (
        <Navbar inverse collapseOnSelect id='topbar-wrapper'>
          <Navbar.Header>
            <Link to='/'>
              <Navbar.Brand>
                <div id='nav-logo-wrapper-a'>
                  <img src='http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478401023/Extras/Logomakr_1YWFpy.png' />
                </div>
              </Navbar.Brand>
              <div className='shelf-nav-b'>
                <Navbar.Header>
                  <Navbar.Brand>
                    <a>mangaReads</a>
                  </Navbar.Brand>
                </Navbar.Header>
              </div>
            </Link>
            <Navbar.Toggle />
          </Navbar.Header>
          <Navbar.Collapse>
            <Nav onSelect={this.handleSelect}>
              <NavItem eventKey={1}>myManga</NavItem>
              <NavItem eventKey={2} pullRight>Logout</NavItem>
            </Nav>
          </Navbar.Collapse>
        </Navbar>
    );
  }
}
export default TopBar;
