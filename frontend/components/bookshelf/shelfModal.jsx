import React from 'react';

import { Modal,
         Button,
         Col,
         Image } from 'react-bootstrap';
import StarRatingComponent from 'react-star-rating-component';

const ShelfGridModal = props => {
  const { openClose,
          openCloseModal,
          mangaInfo } = props;

  return(
    <Modal show={openClose}>
      <Modal.Header id='shelf-modal-bg'>
        <Modal.Title>{mangaInfo.title}</Modal.Title>
      </Modal.Header>

      <Modal.Body id='shelf-modal-bg'>
          <div className='bars-shelf-row-md'>
            <Col xs={12} sm={4}>
              <a className='bars-bookshelf-a ' href={`#/manga/${mangaInfo.id}`}>
                <Image responsive className="bookshelfPicture" src={mangaInfo.img_url}/>
              </a>
            </Col>

            <Col xs={12} sm={4} smOffset={0} md={4}>
              <div className='grid-md-left'>
                <div>
                  <Col xs={12}>
                    <div>
                      Release Date:
                      <div>
                        {mangaInfo.release_date}
                      </div>
                    </div>
                  </Col>
                </div>
              </div>
            </Col>
            {/*
              <Col xs={12} sm={3} md={2}>
              {mangaInfo.genre !== undefined ?
              <div className="grid-genres">Genres:
              <div>{mangaInfo.genre[0]}</div>
              <div>{mangaInfo.genre[1]}</div>
              <div>{mangaInfo.genre[2]}</div>
              </div> : null
              }
              </Col>
              */}

            <Col sm={4}>
              <div className='grid-md-left'>
                <Col md={12}>
                  <div className="author">
                    Author:
                    <div>
                      {mangaInfo.author}
                    </div>
                  </div>
                </Col>
                <br />
                <Col xs={12}>
                  <div className="grid-userShelfRating">
                    Average rating:
                    <div>
                      <StarRatingComponent
                        className="shelfStarRating"
                        name="rater"
                        editing={false}
                        starCount={5}
                        value={mangaInfo.avg}/>
                    </div>
                  </div>
                </Col>
              </div>
            </Col>

          </div>
      </Modal.Body>

      <Modal.Footer id='shelf-modal-bg'>
        <Button
          id='shelf-modal-bg'
          onClick={openCloseModal}>
          Close
        </Button>
      </Modal.Footer>
  </Modal>
  );
}
export default ShelfGridModal;
