


import React from 'react';

import { createBookshelf } from '../../actions/bookshelf_actions';

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      bookshelfName: ""
    };

    this.handleCreateBookshelf = this.handleCreateBookshelf.bind(this);
  }

  handleCreateBookshelf(e) {
    e.preventDefault();
    const shelfName = this.state.bookshelfName;
    const shelf = {bookshelf: {title: shelfName, user_id: window.currentUser.id}};
    this.props.createBookshelf(shelf);

  }

  update(property) {
    return e => this.setState({[property]: e.target.value});
  }
//JQUERY
//   $('#change').on('click', function() {
//     $('div').each(function() {
//         if($(this).hasClass('active')) {
//             $(this).removeClass('active');
//         } else {
//             $(this).addClass('active');
//         }
//     });
// });
//HTML
// <button id = "change">Change</button>
// <div class = "active">THis is div 1</div>
// <div>This is div 2</div>


  render() {
    return (
      <div>
        <input type="text"
               placeholder="Add your own Shelf!"
               onChange={this.update("bookshelfName")} />
             <input className="newShelfButton" type="submit"
               onClick={this.handleCreateBookshelf} value="Submit" />
      </div>
    );
  }
}


export default Bookshelf;
