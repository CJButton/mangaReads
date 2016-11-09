


import React from 'react';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);
    this.handleAll = this.handleAll.bind(this);
    this.handleShelf = this.handleShelf.bind(this);
  }

  componentDidMount() {
    this.props.requestAllBookshelves();
  }

  handleAll() {
    this.props.requestAllManga("all");
  }

  handleShelf(e) {
    let target = e.currentTarget.value;
    this.props.requestAllManga(target);
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
        <div className="sidbar-wrapper">
        <ul className="sidebar-shelves-holder">

          <input className="sidebar-all" onClick={this.handleAll}
            type="submit" value="All"/>

          {this.props.bookshelves.map((shelf, i) => (
            <input className="sidebar-shelves" onClick={this.handleShelf}
              type="submit" value={shelf.title} />
          ))}

        </ul>
        <footer classname="sidebar-footer"></footer>
        </div>
      </main>
    );
  }
}


export default Sidebar;
