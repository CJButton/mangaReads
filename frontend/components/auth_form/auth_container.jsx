

import {connect} from 'react-redux';
import {logout, login, signup} from '../../actions/session_actions';
import AuthForm from './auth_form';


// if user is logged in, then redirect them elsewhere
const mapStateToProps = ({session}) => ({
  currentUser: session.currentUser,
  errors: session.errors,
  loggedIn: Boolean(session.currentUser)
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  login: user => dispatch(login(user)),
  signup: user => dispatch(signup(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AuthForm);
