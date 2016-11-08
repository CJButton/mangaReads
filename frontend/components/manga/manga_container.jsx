

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import MangaShow from './manga';

const mapStateToProps = ({manga}) => ({
  manga
});

const mapDispatchToProps = dispatch => ({
  requestAllManga: () => dispatch(requestAllManga())
});


export default connect(
  mapStateToProps
)(MangaShow);
