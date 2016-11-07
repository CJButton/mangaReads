


import React from 'react';
import { connect } from 'react-redux';

import Bookshelf from './bookshelf';

const mapStateToProps = ({bookshelf}) => ({
  bookshelf
});

// const mapDispatchToProps = ({}) = ({
//
// });

export default connect(
  mapStateToProps
)(Bookshelf);
