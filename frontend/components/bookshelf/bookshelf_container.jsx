


import React from 'react';
import { connect } from 'react-redux';

import { createBookshelf } from '../../actions/bookshelf_actions';

import Bookshelf from './bookshelf';

const mapStateToProps = ({bookshelf}) => ({
  bookshelf
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: bookshelf => dispatch(createBookshelf(bookshelf))
});

// const mapDispatchToProps = ({}) = ({
//
// });

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Bookshelf);
