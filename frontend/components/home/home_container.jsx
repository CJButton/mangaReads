

import React from 'react';
import { connect } from 'react-redux';

import Home from './home';

const mapStateToProps = ({manga}) => ({
  manga: Object.keys(manga).map(key => manga[key])
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
