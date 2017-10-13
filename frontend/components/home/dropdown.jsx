
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
    this.state = {
      shelvesWithBooks: ''
    }

    this.handleLinkClick = this.handleLinkClick.bind(this);
    this.checkShelf = this.checkShelf.bind(this);
  }

  handleLinkClick () {
    this.refs.dropdown.hide();
  }

  checkShelf (bookshelfId, mangaId) {
    console.log('in checkShelf');
    console.log(bookshelfId);
    console.log(mangaId);
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
    const { bookshelves, shelvesWithBooks } = this.props;
    const { checkShelf } = this;
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
            {bookshelves && shelvesWithBooks && <FormGroup>
              {bookshelves.map((shelf, i) => {
                let checkState = false
                if(shelvesWithBooks.has(shelf.id)) {checkState = true}
                {/* see if we can get this check down to O(1)
                    use a Set instead of an array */}
                return(
                  <Checkbox
                    key={i}
                    checked={checkState}
                    onClick={() => checkShelf(shelf.id, 1277)}>
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
