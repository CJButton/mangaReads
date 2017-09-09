

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
              <div className='shelf-nav-a'>
                <Link to='/'>
                  <Navbar.Brand>
                    <div id='nav-logo-wrapper-a'>
                      <img src='http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478401023/Extras/Logomakr_1YWFpy.png' />
                    </div>
                  </Navbar.Brand>
                </Link>
              </div>
              <div className='shelf-nav-b'>
                  <Navbar.Brand>
                    <div>mangaReads</div>
                  </Navbar.Brand>
              </div>
            <Navbar.Toggle />
          </Navbar.Header>
          <Navbar.Collapse>
            <Nav onSelect={this.handleSelect}>
              <NavItem eventKey={1}>myManga</NavItem>
              <NavItem eventKey={2}>Logout</NavItem>
            </Nav>
          </Navbar.Collapse>
        </Navbar>
    );
  }
}
 // id='topbar-logout'
// id='topbar-mymanga'
export default TopBar;
