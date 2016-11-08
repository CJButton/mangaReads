


import { connect } from 'react-redux';
import { createBookshelf,
         requestAllBookshelves,
         deleteBookshelf,
         updateBookshelf } from '../../actions/bookshelf_actions';
import Sidebar from './sidebar';

const mapStateToProps = ({bookshelves}) => ({
  bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestAllBookshelves: () => dispatch(requestAllBookshelves),
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),
  deleteBookshelf: bookshelf => dispatch(deleteBookshelf(bookshelf)),
  updateBookshelf: bookshelf => dispatch(updateBookshelf(bookshelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Sidebar);
