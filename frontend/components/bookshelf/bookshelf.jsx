

import React from 'react';

import ShelfBars from './shelfBars';
import ShelfGrid from './shelfGrid';

import { createBookshelf } from '../../actions/bookshelf_actions';
import ShelfControls from '../sidebar/shelfControls_Container';

import StarRatingComponent from 'react-star-rating-component';
import { Grid,
         Row,
         Col } from 'react-bootstrap';

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      shelfType: 'bars'
    }
    this.changeShelfType = this.changeShelfType.bind(this);
  }

  changeShelfType(e) {
    this.setState({
      shelfType: e
    });
  }

  render() {
    const shelfType = this.state.shelfType;
    const changeShelfType = this.changeShelfType;
    const currentManga = this.props.manga;
    return (
      <div>
        <div className='bookshelfMain'>
          <ShelfControls
            changeShelfType={changeShelfType}/>
        </div>
        {shelfType === 'grid' && <ShelfGrid manga={currentManga} />}
        {shelfType === 'bars' && <ShelfBars manga={currentManga} />}
      </div>
    );
  }
}
export default Bookshelf;
