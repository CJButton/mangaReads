


import React from 'react';
import {Link} from 'react-router';
import Modal from 'react-modal';
import { Nav,
         Navbar,
         NavItem,
         NavDropdown,
         MenuItem,
         FormGroup,
         FormControl,
         Button,
         Form,
         Grid,
         Row,
         Col } from 'react-bootstrap';

class shelfControls extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      bookshelves: this.props.bookshelves,
      shelfname: "",
      currently: "bg",
      read: "bg",
      want: "bg",
      all: "highlight",
      deleteModal: false,
      shelfId: 0,
      dropdown: 'All-Shelves'
    };

    this.handleAll = this.handleAll.bind(this);
    this.handleShelf = this.handleShelf.bind(this);
    this.handleAddShelf = this.handleAddShelf.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.handleSelect = this.handleSelect.bind(this);
  }

  componentWillMount() {
    Modal.setAppElement('body');
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

  deleteModal(shelfId) {
    this.setState({
      deleteModal: true,
      shelfId: shelfId
    });
  }

  closeModal() {
    this.setState({
      deleteModal: false
    });
  }

  deleteShelf() {
    this.props.deleteBookshelf(this.state.shelfId);
    this.closeModal();
  }

  handleSelect(e) {
    console.log(e);
  }

  render() {
    const shelfTitle = this.state.dropdown;
    // display all shelves in dropdown
    // add shelf functionality
    return (
      <div>
        <Navbar inverse collapseOnSelect>
          <Navbar.Header>
            <Navbar.Brand>
              <a>Manga-Shelves</a>
            </Navbar.Brand>
            <Navbar.Toggle />
          </Navbar.Header>
          <Navbar.Collapse>
            <Nav>
              <NavItem eventKey={1} onSelect={() => this.handleSelect(1)}>
                <i className='fa fa-bars nav-type' aria-hidden='true' />
              </NavItem>
              <NavItem eventKey={2} onSelect={() => this.handleSelect(2)}>
                <i className='fa fa-th-large nav-type' aria-hidden='true' />
              </NavItem>
              <NavDropdown eventKey={3} title={shelfTitle} id="basic-nav-dropdown">
                <MenuItem
                  eventKey={3.1}
                  onSelect={() => this.handleSelect(3.1)}
                  >All-Shelves</MenuItem>
                <MenuItem
                  eventKey={3.2}
                  onSelect={() => this.handleSelect(3.2)}
                  >Want-To-Read</MenuItem>
                <MenuItem
                  eventKey={3.3}
                  onSelect={() => this.handleSelect(3.3)}
                  >Currently-Reading</MenuItem>
                <MenuItem
                  eventKey={3.4}
                  onSelect={() => this.handleSelect(3.4)}
                  >Have-Read</MenuItem>
                <MenuItem divider />
                <MenuItem eventKey={3.5}>Separated link</MenuItem>
              </NavDropdown>
            </Nav>

            <Nav pullRight>
              <div className='nav-right-wrapper'>
                <Navbar.Form>
                  <FormGroup>
                    <FormControl type="text" placeholder="Create a Shelf" />
                  </FormGroup>
                  {' '}
                  <Button type="submit">Create</Button>
                </Navbar.Form>
              </div>
            </Nav>

          </Navbar.Collapse>
        </Navbar>
        { /*
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
                   onClick={this.deleteModal.bind(this, shelf.id)}>X</div>
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

        <div className="deleteModalContainer">
          <Modal className="deleteModal"
            isOpen={this.state.deleteModal}
            contentLabel="Modal">
            <div className="deleteShelfText">Sure you want to delete your shelf?</div>
            <div className="deleteEditClose">
              <button className="deleteButton button"
                onClick={this.deleteShelf.bind(this)}>
                Yes, delete it.</button>
              <button className="cancelDelete button"
                onClick={this.closeModal.bind(this)}>No! Leave as is!</button>
            </div>
          </Modal>
        </div>
        */}
      </div>
    );
  }
}

export default shelfControls;