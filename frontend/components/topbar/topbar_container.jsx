

import React from 'react';
import { connect } from 'react-redux';

import {logout} from '../../actions/session_actions';

import TopBar from './topbar';


const mapStateToProps = () => ({

});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TopBar);
