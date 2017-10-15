
import React, { Component } from 'react';
import Dropdown, { DropdownTrigger, DropdownContent } from 'react-simple-dropdown';

import { Button,
         FormGroup,
         Checkbox,
         Radio } from 'react-bootstrap';


{/* Replace with react-bootstrap's CustomToggle */}
class AccountDropdown extends Component {
  constructor (props) {
    super(props);

    this.handleLinkClick = this.handleLinkClick.bind(this);
    this.checkShelf = this.checkShelf.bind(this);
    this.checkStat = this.checkStat.bind(this);
  }

  handleLinkClick () {
    this.refs.dropdown.hide();
  }

  checkShelf (bookshelfId, mangaId) {
    this.props.toggleShelf(bookshelfId, mangaId);
  }

  checkStat(readStatus, mangaId) {
    console.log(readStatus);
    console.log(mangaId);
    this.props.changeMangaStatus(readStatus, mangaId)
  }

  render () {
    const statuses = {
      'Read': 'HAVE-READ',
      'Currently-Reading': 'CURRENTLY-READING',
      'Want-To-Read': 'WANT-TO-READ'
    }
    const { bookshelves,
            shelvesWithBooks,
            status } = this.props;
    const { checkShelf, checkStat } = this;
    return (
      <Dropdown className="account-dropdown" ref="dropdown">
        <DropdownTrigger>
          <Button id='home-visit-button-right'>
            <div className='home-visit-wrapper'>
              <i className="fa fa-plus fa-lg home-shelf-add" aria-hidden="true" />
              <div className='home-visit-text hvt-r'>MY SHELVES</div>
            </div>
          </Button>
        </DropdownTrigger>
        <DropdownContent>
          <form className='home-dd-form'>
            {status && <FormGroup>
              {Object.keys(statuses).map((type, i) => {
              let checkStatus = false;
              if(status.status === type) {checkStatus = true}
              return(
                <Radio
                  bsClass='home-dropdown-radio'
                  key={i}
                  checked={checkStatus}
                  onChange={() => checkStat(type, 1277)}>
                  {statuses[type]}
                </Radio>
              );
            })}
            </FormGroup>}
            {bookshelves && shelvesWithBooks && <FormGroup bsSize='large'>
              {bookshelves.map((shelf, i) => {
                let checkState = false
                if(shelvesWithBooks.has(shelf.id)) {checkState = true}
                return(
                  <Checkbox
                    bsClass='home-dropdown-radio'
                    key={i}
                    checked={checkState}
                    onChange={() => checkShelf(shelf.id, 1277)}>
                    {shelf.title}
                  </Checkbox>
                );
              })}
            </FormGroup>}
          </form>
        </DropdownContent>
      </Dropdown>
    );
  }
}

export default AccountDropdown;
