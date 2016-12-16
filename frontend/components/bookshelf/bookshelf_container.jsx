

import { connect } from 'react-redux';
import { createBookshelf } from '../../actions/bookshelf_actions';
import Bookshelf from './bookshelf';

const mapStateToProps = ({manga}, state) => ({
  manga: Object.keys(manga).map(key => manga[key]),
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: shelf => dispatch(createBookshelf(shelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Bookshelf);
