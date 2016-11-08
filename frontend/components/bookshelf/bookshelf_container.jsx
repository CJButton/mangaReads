

import { connect } from 'react-redux';
import { createBookshelf } from '../../actions/bookshelf_actions';
import Bookshelf from './bookshelf';

const mapStateToProps = ({bookshelf}) => ({
  bookshelf: Object.keys(bookshelf).map(key => bookshelf[key])
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: shelf => dispatch(createBookshelf(shelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Bookshelf);
