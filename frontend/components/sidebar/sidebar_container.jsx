


import { connect } from 'react-redux';
import { createBookshelf,
         requestAllBookshelves,
         deleteBookshelf,
         updateBookshelf } from '../../actions/bookshelf_actions';

import { requestAllManga } from '../../actions/manga_actions';

import Sidebar from './sidebar';
import values from 'lodash/values';

const mapStateToProps = (state) => ({
  bookshelves: values(state.bookshelves)
});

const mapDispatchToProps = dispatch => ({
  requestAllBookshelves: () => dispatch(requestAllBookshelves()),
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),
  deleteBookshelf: shelf => dispatch(deleteBookshelf(shelf)),
  updateBookshelf: shelf => dispatch(updateBookshelf(shelf)),
  requestAllManga: shelf => dispatch(requestAllManga(shelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Sidebar);
