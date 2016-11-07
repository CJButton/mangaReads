


import React from 'react';

import { createBookshelf } from '../../actions/bookshelf_actions';

// const Bookshelf = ({bookshelf}) => (
//   <bookshelves className="bookshelves">
//     <div>
//       <li>{bookshelf.title}</li>
//     </div>
//   </bookshelves>
// );

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);

    this.handleCreateBookshelf = this.handleCreateBookshelf.bind(this);
  }

  handleCreateBookshelf(e) {
    e.preventDefault();
    console.log(window.currentUser);
    const shelf = {bookshelf: {title: "Attempt 4", user_id: window.currentUser.id}};
    this.props.createBookshelf(shelf);

  }

  render() {
    return (
      <div>
        "Will this render?"
        <input type="submit"
          onClick={this.handleCreateBookshelf} value="Create Bookshelf" />
      </div>
    );
  }
}


// class Bookshelf extends React.component{
//   constructor(props) {
//     super(props);
//   }
//
//   render() {
//     return (
//       <div>
//       "Hello from the Bookshelf component!"
//       </div>
//     );
//   }
// }

export default Bookshelf;
