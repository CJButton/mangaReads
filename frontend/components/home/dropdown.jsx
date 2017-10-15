
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
    // toggleShelf: (bookshelfId, mangaId) =>
    //         dispatch(toggleShelf(bookshelfId, mangaId)),
    // changeMangaStatus: (readStatus, mangaId) =>
    //         dispatch(changeMangaStatus(readStatus, mangaId)),
    // bookshelves
    // {id: 4, title: "Testing Shelf", user_id: 1}
    // 1
    // :
    // {id: 5, title: "test 2", user_id: 1}
    console.log(this.props);
    const statuses = {
      'Read': 'Have-Read',
      'Currently-Reading': 'Currently-Reading',
      'Want-To-Read': 'Want-To-Read'
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
          <form>
            {status && <FormGroup>
              {Object.keys(statuses).map((type, i) => {
              let checkStatus = false;
              if(status.status === type) {checkStatus = true}
              return(
                <Radio
                  key={i}
                  checked={checkStatus}
                  onChange={() => checkStat(type, 1277)}>
                  {statuses[type]}
                </Radio>
              );
            })}
            </FormGroup>}
            {bookshelves && shelvesWithBooks && <FormGroup>
              {bookshelves.map((shelf, i) => {
                let checkState = false
                if(shelvesWithBooks.has(shelf.id)) {checkState = true}
                return(
                  <Checkbox
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
