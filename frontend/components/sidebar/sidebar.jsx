


import React from 'react';
import {Link} from 'react-router';

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

  // componentDidMount() {
  //   this.props.requestAllBookshelves();
  // }

  handleAll() {
    this.props.requestAllManga("all");
  }

  handleShelf(e) {
    let target = e.currentTarget.innerHTML;
    this.props.requestAllManga(target);
  }

  handleAddShelf(e) {
    const shelf = this.state.shelfname;
    this.props.createBookshelf(shelf);
  }

  render() {
    console.log("sidebar render");

    let bookshelves = [];
    if (this.props.bookshelves ) {
      bookshelves = this.props.bookshelves;
    }

    const {shelfname} = this.state;

    return (
      <main className="sidebar-container">
        <div className="sidbar-wrapper">
          <li className="sidebar-shelves-title">Manga Status</li>
          <ul className="sidebar-shelves-holder">

            <div className="sidebar-topper">
          <input className="sidebar-all button" onClick={this.handleAll}
            type="submit" value="All"/>

          <input className="sidebar-to-read button" onClick={this.props.requestAllManga.bind(this, "Want-To-Read")}
            type="submit" value="Want-To-Read"/>

          <input className="sidebar-to-read button" onClick={this.props.requestAllManga.bind(this, "Read")}
            type="submit" value="Read"/>

          <input className="sidebar-to-read button" onClick={this.props.requestAllManga.bind(this, "Currently-Reading")}
            type="submit" value="Currently-Reading"/>
          <br className="sidebar-break"></br>
          </div>
          <br></br>
          <br></br>

          <li className="shelf-title">Bookshelves</li>
          {bookshelves.map((shelf, i) => {
            return (<div className="sidebar-generated-buttons">
            <span key={i} className="sidebar-shelves" onClick={this.handleShelf}>{shelf.title}</span>

            <span className="sidebar-delete" onClick={this.props.deleteBookshelf.bind(this, shelf.id)}>X</span>
            <br></br>
            </div>
          );
          })}

        </ul>
        <li className="sidebar-shelf-create">Create your own shelves!</li>
        <input className="sidebar-shelf-name"
               type="text"
               placeholder="Shelfname"
               value={shelfname}
               onChange={this.update("shelfname")}/>
             <br></br>
          <input className="addShelfSubmit"
                 type="submit"
                 placeholder="Add Shelf"
                 onClick={this.handleAddShelf} />
        </div>
      </main>
    );
  }
}


export default Sidebar;
