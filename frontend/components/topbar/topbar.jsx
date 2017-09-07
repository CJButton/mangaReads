

import React from 'react';
import { Link } from 'react-router';

import { Nav,
         Navbar,
         NavItem,
         NavDropdown} from 'react-bootstrap';

import logout from '../../actions/session_actions';

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
    // merge this navbars functions into the mymanga navbar on that page
    // keep a more clean/professional look
    // <a href="#">mangaReads</a>
    return (
      <Navbar inverse collapseOnSelect>
        <Navbar.Header>
          <Link to='/'>
          <Navbar.Brand>
            <div className='nav-logo-wrapper'>
              <img src='http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478401023/Extras/Logomakr_1YWFpy.png' />
            </div>
          </Navbar.Brand>
        </Link>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav onSelect={this.handleSelect}>
            <NavItem eventKey={1}>myManga</NavItem>
          </Nav>
          <Nav onSelect={this.handleSelect} pullRight>
            <NavItem eventKey={2}>Logout</NavItem>
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}
// <header className="topbar-header">
//   <nav className="topbar-nav">
//
//     <div className="topbar-left">
//       <div className="topbar-logo button" onClick={this.handleLogo}></div>
//       <input className="topbar-home-button button" type="submit"
//         onClick={this.handleHome} value="Home" />
//       <input className="topbar-myManga-button button" type="submit"
//         onClick={this.handleMyManga} value="MyManga" />
//     </div>
//
//     <div className="topbar-right">
//       <input className="topbar-logout-button button" type="submit"
//         onClick={this.handleLogout} value="Logout"/>
//     </div>
//   </nav>
// </header>


export default TopBar;
