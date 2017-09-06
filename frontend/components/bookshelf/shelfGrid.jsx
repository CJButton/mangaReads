
import React from 'react';

import ShelfGridModal from './shelfModal';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';
import StarRatingComponent from 'react-star-rating-component';

class shelfGrid extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      openClose: true
    };
    this.openCloseModal = this.openCloseModal.bind(this);
  }

  openCloseModal() {
    const newState = (this.state.openClose === false) ? true : false;
    console.log(newState);
    this.setState({
      openClose: newState
    })
  }
  render() {
    // href={`#/manga/${comic.id}`}
    const manga = this.props.manga;
    const openCloseModal = this.openCloseModal;
    const openClose = this.state.openClose;

    return(
      <div>
          <div className='grid-shelf'>
          {manga.map((comic, i) => (
              <Col xs={6} sm={3} md={2}>
                <div onClick={this.openCloseModal}>
                  <Image responsive className="grid-bookshelfPicture" src={comic.img_url}/>
                </div>
              </Col>
          ))}
          </div>
          <ShelfGridModal
            openClose={openClose}
            openCloseModal={openCloseModal} />
      </div>
    )
  }
}


export default shelfGrid;
