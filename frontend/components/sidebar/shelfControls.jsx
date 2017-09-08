


import React from 'react';
import {Link} from 'react-router';

import DeleteShelfModal from './deleteModal';

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
         Col,
         Image,
         Tooltip,
         OverlayTrigger } from 'react-bootstrap';

class shelfControls extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      bookshelves: this.props.bookshelves,
      shelfname: "",
      deleteModal: false,
      shelfId: 0,
      dropdown: 'All-Shelves'
    };

    this.handleAddShelf = this.handleAddShelf.bind(this);
    this.handleSelect = this.handleSelect.bind(this);
    this.updateShelf = this.updateShelf.bind(this);
    this.closeDeleteModal = this.closeDeleteModal.bind(this);
    this.deleteShelf = this.deleteShelf.bind(this);
    this.getComicsForShelf = this.getComicsForShelf.bind(this);
    this.handleLogout = this.handleLogout.bind(this);
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

  updateShelf(e) {
    this.setState({
      shelfname: e.target.value
    });
  }

  handleAddShelf() {
    const shelf = this.state.shelfname;
    this.props.createBookshelf(shelf);
    this.setState({
      shelfname: ''
    });
  }

  getComicsForPersonalShelf(shelfname) {
    this.props.requestAllManga(shelfname);
  }

  deleteModal(shelfId) {
    this.setState({
      deleteModal: true,
      shelfId: shelfId
    });
  }

  deleteShelf() {
    this.props.deleteBookshelf(this.state.shelfId);
    this.closeDeleteModal();
    this.setState({
      dropdown: 'All-Shelves'
    });
    this.getComicsForShelf('all')
  }

  handleSelect(e) {
    this.getComicsForPersonalShelf(e.title);

    // const newTitle = e.title.length > 17 ?

    this.setState({
      dropdown: e.title
    });
  }

  getComicsForShelf(shelfname) {
    this.props.requestAllManga(shelfname);

    const shelfNames = {
      'all': 'All-Shelves',
      'Read': 'Have-Read',
      'Currently-Reading': 'Currently-Reading',
      'Want-To-Read': 'Want-To-Read'
    }
    const updateShelf = shelfNames[shelfname];
    this.setState({
      dropdown: [updateShelf]
    });
  }

  handleShelfDelete(shelfId) {
    this.setState({
      deleteModal: true,
      shelfId: shelfId
    });
  }

  closeDeleteModal() {
    this.setState({
      deleteModal: false
    });
  }

  handleLogout() {
    this.props.logout();
  }

  render() {
    const shelfTitle = this.state.dropdown;
    const shelfname = this.state.shelfname;
    const openClose = this.state.deleteModal;
    const changeShelfType = this.props.changeShelfType;

    const handleAddShelf = this.handleAddShelf;
    const closeDeleteModal = this.closeDeleteModal;
    const deleteShelf = this.deleteShelf;

    const tooltipA = (
    <Tooltip id="tooltip">Bars</Tooltip>
    );
    const tooltipB = (
    <Tooltip id="tooltip">Grid</Tooltip>
    );

    return (
      <div>
        <Navbar inverse collapseOnSelect fluid={true} id='shelf-controls-wrapper'>
          <div className='shelf-nav-a'>
            <Navbar.Header>
              <Link to='/'>
                <Navbar.Brand>
                  <div className='nav-logo-wrapper'>
                    <img src='http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478401023/Extras/Logomakr_1YWFpy.png' />
                  </div>
                </Navbar.Brand>
              </Link>
              <Navbar.Toggle />
            </Navbar.Header>
          </div>
          <div className='shelf-nav-b'>
            <Navbar.Header>
              <Navbar.Brand>
                <a>{shelfTitle}</a>
              </Navbar.Brand>
              <Navbar.Toggle />
            </Navbar.Header>
          </div>
          <Navbar.Collapse>
            <Nav>
              <OverlayTrigger placement="bottom" overlay={tooltipA}>
                <NavItem eventKey={1} onSelect={() => changeShelfType('bars')}>
                    <i className='fa fa-bars nav-type' aria-hidden='true' />
                </NavItem>
              </OverlayTrigger>
              <OverlayTrigger placement="bottom" overlay={tooltipB}>
                <NavItem eventKey={2} onSelect={() => changeShelfType('grid')}>
                    <i className='fa fa-th-large nav-type' aria-hidden='true' />
                </NavItem>
              </OverlayTrigger>
              <NavDropdown eventKey={3} title={shelfTitle} id="basic-nav-dropdown">
                <MenuItem
                  eventKey={3.1}
                  onSelect={() => this.getComicsForShelf('all')}
                  >All-Shelves</MenuItem>
                <MenuItem
                  eventKey={3.2}
                  onSelect={() => this.getComicsForShelf('Want-To-Read')}
                  >Want-To-Read</MenuItem>
                <MenuItem
                  eventKey={3.3}
                  onSelect={() => this.getComicsForShelf('Currently-Reading')}
                  >Currently-Reading</MenuItem>
                <MenuItem
                  eventKey={3.4}
                  onSelect={() => this.getComicsForShelf('Read')}
                  >Have-Read</MenuItem>
                <MenuItem divider />
                {this.props.bookshelves.map((shelf, i) => {
                  return(
                      <MenuItem
                        key={i + 4}
                        eventKey={i + 4}
                        onSelect={() => this.handleSelect(shelf)}>
                        <div className='shelf-menu-item'>
                          <div className='shelf-menu-title'>
                            {shelf.title}
                          </div>
                          <button
                            className='shelf-delete-button'
                            onClick={() => this.handleShelfDelete(shelf.id)}>
                            X
                          </button>
                        </div>
                      </MenuItem>
                  )
                })}
              </NavDropdown>
            </Nav>
            <Nav onSelect={this.handleLogout} pullRight>
              <NavItem eventKey={2}>Logout</NavItem>
            </Nav>
              <Navbar.Form pullRight fluid={true}>
                <FormGroup>
                  <FormControl
                    type="text"
                    placeholder="Create a Shelf"
                    value={shelfname}
                    id='shelf-create-input'
                    onChange={this.updateShelf}/>
                </FormGroup>
                <Button
                  id='shelf-button'
                  type="submit"
                  onClick={() => handleAddShelf()}>
                  Create
                </Button>
              </Navbar.Form>
          </Navbar.Collapse>
        </Navbar>

        <DeleteShelfModal
          openClose={openClose}
          closeDeleteModal={closeDeleteModal}
          deleteShelf={deleteShelf}/>
      </div>
    );
  }
}
export default shelfControls;
