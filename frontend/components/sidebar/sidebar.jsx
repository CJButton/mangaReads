


import React from 'react';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log("Sidebar mounted?");
    this.props.requestAllBookshelves();
  }

  render() {
    console.log(this.props);
    let bookshelves = [];
    if (this.props.bookshelves ) {
      bookshelves = this.props.bookshelves;
    }
    console.log(bookshelves);
    return (
      <main className="sidebar-container">
        <ul className="sidebar-shelves-holder">
          {this.props.bookshelves.map((shelf, i) => (
            <ul>{shelf.title}</ul>
          ))}
        </ul>
      </main>
    );
  }
}


export default Sidebar;
