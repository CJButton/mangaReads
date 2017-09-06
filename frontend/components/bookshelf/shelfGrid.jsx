
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
      openClose: false,
      mangaInfo: ''
    };
    this.openCloseModal = this.openCloseModal.bind(this);
  }

  openCloseModal(comic) {
    console.log(comic);
    const newState = (this.state.openClose === false) ? true : false;
    this.setState({
      openClose: newState,
      mangaInfo: comic
    });
  }
  render() {
    // href={`#/manga/${comic.id}`}
    console.log(this.state);
    const manga = this.props.manga;
    const openCloseModal = this.openCloseModal;
    const openClose = this.state.openClose;
    const mangaInfo = this.state.mangaInfo;
    return(
      <div>
          <div className='grid-shelf'>
          {manga.map((comic, i) => (
              <Col xs={6} sm={3} md={2}>
                <div onClick={() => openCloseModal(comic)}>
                  <Image responsive className="grid-bookshelfPicture" src={comic.img_url}/>
                </div>
              </Col>
          ))}
          </div>
          <ShelfGridModal
            openClose={openClose}
            openCloseModal={openCloseModal}
            mangaInfo={mangaInfo} />
      </div>
    )
  }
}


export default shelfGrid;
