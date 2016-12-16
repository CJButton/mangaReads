


import React from 'react';
import {Link} from 'react-router';

class Sidebar extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
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
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "bg"
    });
  }

  handleAddShelf(e) {
    const shelf = this.state.shelfname;
    this.props.createBookshelf(shelf);
  }


  getComicsForShelf(shelfname) {
    this.props.requestAllManga(shelfname);
    let name = shelfname.split("-");

    this.setState({
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "bg"
    });
    this.setNewHighlight(name[0].toLowerCase());
  }

  setNewHighlight(status) {
    this.setState({
      [status]: "highlight"
    });
  }


  render() {
    console.log(this.props);
    let bookshelves = [];
    if (this.props.bookshelves ) {
      bookshelves = this.props.bookshelves;
    }

    const {shelfname} = this.state;

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
          {bookshelves.map((shelf, i) => {
            return (<div key={i} className="sidebar-generated-buttons">
            <div className={`sidebar-shelves button `} onClick={this.handleShelf}>{shelf.title}</div>
            <div className="sidebar-delete" onClick={this.props.deleteBookshelf.bind(this, shelf.id)}>X</div>

            <br></br>
            </div>
          );
          })}

        </ul>
        <div className="sidebar-shelf-create">Create your own shelves!</div>
          <input className="sidebar-shelf-name"
               type="text"
               placeholder="Shelfname"
               value={shelfname}
               onChange={this.update("shelfname")}/>

             <input className="addShelfSubmit button"
                 type="submit"
                 placeholder="Add Shelf"
                 onClick={this.handleAddShelf} />
        </div>
      </main>
    );
  }
}



export default Sidebar;
