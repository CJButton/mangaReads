
import React, { Component } from 'react';
import Dropdown, { DropdownTrigger, DropdownContent } from 'react-simple-dropdown';

class AccountDropdown extends Component {
  constructor (props) {
    super(props);

    this.handleLinkClick = this.handleLinkClick.bind(this);
  }

  handleLinkClick () {
    this.refs.dropdown.hide();
  }

  render () {

    return (
      <Dropdown className="account-dropdown" ref="dropdown">
        <DropdownTrigger>
          <span className="account-dropdown__name">My Account</span>
        </DropdownTrigger>
        <DropdownContent>
          <ul className="account-dropdown__quick-links account-dropdown__segment">
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Your profile
              </a>
            </li>
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Your stars
              </a>
            </li>
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Explore
              </a>
            </li>
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Help
              </a>
            </li>
          </ul>
          <ul className="account-dropdown__management-links account-dropdown__segment">
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Settings
              </a>
            </li>
            <li className="account-dropdown__link">
              <a className="account-dropdown__link__anchor" href="#" onClick={this.handleLinkClick}>
                Sign out
              </a>
            </li>
          </ul>
        </DropdownContent>
      </Dropdown>
    );
  }
}

export default AccountDropdown;
