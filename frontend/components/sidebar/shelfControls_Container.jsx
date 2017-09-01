

import { connect } from 'react-redux';
import { createBookshelf,
         requestAllBookshelves,
         deleteBookshelf,
         updateBookshelf } from '../../actions/bookshelf_actions';

import { requestAllManga } from '../../actions/manga_actions';

import shelfControls from './shelfControls';
import values from 'lodash/values';

const mapStateToProps = (state) => ({
  bookshelves: values(state.bookshelves)
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: shelf => dispatch(createBookshelf(shelf)),
  deleteBookshelf: id => dispatch(deleteBookshelf(id)),
  updateBookshelf: shelf => dispatch(updateBookshelf(shelf)),
  requestAllManga: shelf => dispatch(requestAllManga(shelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(shelfControls);
