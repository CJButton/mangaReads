

import React from 'react';
import { connect } from 'react-redux';

import MangaShow from './manga';

const mapStateToProps = ({manga}) => ({
  manga
});


export default connect(
  mapStateToProps
)(MangaShow);
