


import React from 'react';
import {Link} from 'react-router';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      bookshelves: this.props.bookshelves,
      shelfname: "",
      Currently: "bg",
      Read: "bg",
      Want: "bg",
      all: "highlight"
    };

    this.handleAll = this.handleAll.bind(this);
    this.handleShelf = this.handleShelf.bind(this);
    this.handleAddShelf = this.handleAddShelf.bind(this);
  }

  componentWillReceiveProps(nextprops) {
    console.log(this.state);
    if (nextprops.bookshelves.length > 0) {
      nextprops.bookshelves.map((shelf) => {
        this.setState({
          [shelf.title]: "bg"
        });
      });
    }
  }

  update(property) {
    return e => this.setState({[property]: e.target.value});
  }

  handleAll() {
    this.props.requestAllManga("all");
  }

  handleShelf(e) {
    let target = e.currentTarget.innerHTML;
    // console.log(target);
    // console.log(this.state[target]);
    this.props.requestAllManga(target);
    this.setState({
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "bg",
      [target]: "highlight"
    });
  }

  handleAddShelf(e) {
    const shelf = this.state.shelfname;
    this.props.createBookshelf(shelf);
  }


  getComicsForShelf(shelfname) {
    this.props.requestAllManga(shelfname);
    this.setStatusShelvesToBG();

    let name = shelfname.split("-");
    this.setNewHighlight(name[0].toLowerCase());
  }

  setStatusShelvesToBG() {
    this.setState({
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "bg"
    });
  }

  getComicsForPersonalShelf(shelfname) {
    this.props.requestAllManga(shelfname);

    this.setStatusShelvesToBG();
    this.props.bookshelves.map((shelf) => {
      this.setState({
        [shelf.title]: "bg"
      });
    });
    this.setNewHighlight(shelfname);
  }

  setNewHighlight(shelf) {
    this.setState({
      [shelf]: "highlight"
    });
  }

  // after initializing, add each bookshelf to the state and give it
  // a state of bg
  // when one is clicked all other shelves are switched off
  // try iterating through the bookshelf array with each one of the names
  // to turn them off; then turn on the correct one
  render() {
    console.log(this.state);
    return (
      <main className="sidebar-container">
        <div className="sidbar-wrapper">
          <div className="sidebar-shelves-title">Manga Status</div>
          <ul className="sidebar-shelves-holder">

            <div className="sidebar-topper">
          <input className={`sidebar-all button ` + this.state.all} onClick={this.getComicsForShelf.bind(this, "all")}
            type="submit" value="All"/>

          <input className={`sidebar-all button ` + this.state.currently} onClick={this.getComicsForShelf.bind(this, "Currently-Reading")}
            type="submit" value="Currently-Reading"/>

          <input className={`sidebar-all button ` + this.state.read} onClick={this.getComicsForShelf.bind(this, "Read")}
            type="submit" value="Read"/>

          <input className={`sidebar-all button ` + this.state.want} onClick={this.getComicsForShelf.bind(this, "Want-To-Read")}
            type="submit" value="Want-To-Read"/>

          <br className="sidebar-break"></br>
          </div>
          <br></br>
          <br></br>

          <li className="shelf-title">Bookshelves</li>
          {this.props.bookshelves.map((shelf, i) => {
            return (<div key={i} className="sidebar-generated-buttons">
            <div className={`sidebar-shelves button ` + this.state[shelf.title] }
                    onClick={this.getComicsForPersonalShelf.bind(this, shelf.title)}>{shelf.title}</div>
            <div className="sidebar-delete button" onClick={this.props.deleteBookshelf.bind(this, shelf.id)}>X</div>

            <br></br>
            </div>
          );
          })}
        </ul>
          <div className="addShelves-sidebar">
            <input className="sidebar-shelf-name"
              type="text"
              placeholder="Shelfname"
              value={this.state.shelfname}
              onChange={this.update("shelfname")}/>

           <input className="addShelfSubmit button"
               type="submit"
               placeholder="Add Shelf"
               onClick={this.handleAddShelf} />
         </div>
        </div>
      </main>
    );
  }
}

// let bookshelves = [];
// if (this.props.bookshelves ) {
//   bookshelves = this.props.bookshelves;
// }
//
// const {shelfname} = this.state;


export default Sidebar;

// <div className="sidebar-shelf-create">Create your own shelves!</div>
//   <input className="sidebar-shelf-name"
//        type="text"
//        placeholder="Shelfname"
//        value={shelfname}
//        onChange={this.update("shelfname")}/>
//
