


import React from 'react';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      shelfname: ""
    };

    this.handleAll = this.handleAll.bind(this);
    this.handleShelf = this.handleShelf.bind(this);
    this.handleAddShelf = this.handleAddShelf.bind(this);
  }

  update(property) {
    return e => this.setState({[property]: e.target.value});
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

  handleAddShelf(e) {
    const shelf = this.state.shelfname;
    console.log(shelf);
    this.props.createBookshelf(shelf);
  }

  render() {

    let bookshelves = [];
    if (this.props.bookshelves ) {
      bookshelves = this.props.bookshelves;
    }

    const {shelfname} = this.state;

    return (
      <main className="sidebar-container">
        <div className="sidbar-wrapper">
        <ul className="sidebar-shelves-holder">

          <input className="sidebar-all" onClick={this.handleAll}
            type="submit" value="All"/>

          {this.props.bookshelves.map((shelf, i) => {
            return (<div>
            <input className="sidebar-shelves" onClick={this.handleShelf}
              type="submit" value={shelf.title} />
            <span onClick={this.props.deleteBookshelf.bind(this, shelf.id)}>X</span>
            </div>
          );
          })}

        </ul>
        <input type="text"
               placeholder="Place Shelfname here"
               value={shelfname}
               onChange={this.update("shelfname")}/>

          <input className="addShelfSubmit"
                 type="submit"
                 placeholder="Add Shelf"
                 onClick={this.handleAddShelf} />

               <footer className="sidebar-footer"></footer>
        </div>
      </main>
    );
  }
}


export default Sidebar;
