

import React from 'react';
import { connect } from 'react-redux';

import Home from './home';

// manga: Object.keys(manga).map(key => manga[key])
const mapStateToProps = ({manga}) => ({
  manga
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
