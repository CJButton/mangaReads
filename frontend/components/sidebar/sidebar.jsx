


import React from 'react';
import {Link} from 'react-router';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      bookshelves: this.props.bookshelves,
      shelfname: "",
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "highlight"
    };

    this.handleAll = this.handleAll.bind(this);
    this.handleShelf = this.handleShelf.bind(this);
    this.handleAddShelf = this.handleAddShelf.bind(this);
  }

  componentWillReceiveProps(nextprops) {
    if (nextprops.bookshelves.length > 0 && this.props.bookshelves.length < 1) {
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
    this.props.requestAllManga(target);
    this.setState({
      Currently: "bg",
      Read: "bg",
      Want: "bg",
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
    this.setStatusForPersonalShelvesBG();
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

  setStatusForPersonalShelvesBG() {
    this.props.bookshelves.map((shelf) => {
      this.setState({
        [shelf.title]: "bg"
      });
    });
  }

  getComicsForPersonalShelf(shelfname) {
    this.props.requestAllManga(shelfname);
    this.setStatusShelvesToBG();
    this.setStatusForPersonalShelvesBG();
    this.setNewHighlight(shelfname);
  }

  setNewHighlight(shelf) {
    this.setState({
      [shelf]: "highlight"
    });
  }

  render() {
    return (
      <main className="sidebar-container">
        <div className="sidbar-wrapper">
          <ul className="sidebar-shelves-holder">

        <div className="sidebar-topper">
            <div className="sidebar-shelves-title">Manga Status</div>
          <input className={`sidebar-all button ` + this.state.all}
            onClick={this.getComicsForShelf.bind(this, "all")}
            type="submit" value="All"/>

          <input className={`sidebar-all button ` + this.state.currently}
            onClick={this.getComicsForShelf.bind(this, "Currently-Reading")}
            type="submit" value="Currently-Reading"/>

          <input className={`sidebar-all button ` + this.state.read}
            onClick={this.getComicsForShelf.bind(this, "Read")}
            type="submit" value="Read"/>

          <input className={`sidebar-all button ` + this.state.want}
            onClick={this.getComicsForShelf.bind(this, "Want-To-Read")}
            type="submit" value="Want-To-Read"/>

          <br className="sidebar-break"></br>
          </div>
          <br></br>


          <div className="userGenShelvesContainer">
            <div className="shelf-title">Bookshelves</div>
            {this.props.bookshelves.map((shelf, i) => {
              return (<div key={i} className="sidebar-generated-buttons">
              <div className={`sidebar-shelves button ` + this.state[shelf.title] }
                   onClick={this.getComicsForPersonalShelf.bind(this, shelf.title)}>
                   {shelf.title}</div>
              <div className="sidebar-delete button"
                   onClick={this.props.deleteBookshelf.bind(this, shelf.id)}>X</div>
              </div>
            );
            })}
        </div>
        </ul>
          <div className="addShelves-sidebar">
            <p>Add your own Shelf!</p>
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

export default Sidebar;
