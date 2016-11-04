

import { connect } from 'react-redux';

import { requestManga } from '../../actions/manga_actions';

import MangaShow from './manga';
// allows us to request a specific comic that we wish to see


// what do I need to grab from state here?
// just those things nested as manga!
const mapStateToProps = ( {manga}, ownProps ) => ({
   manga, ownProps
});

const mapDispatchToProps = dispatch => ({
  requestManga: id => dispatch(requestManga(id))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
