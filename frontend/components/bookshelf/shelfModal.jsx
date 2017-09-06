import React from 'react';

import { Modal,
         Button,
         Col,
         Image } from 'react-bootstrap';
import StarRatingComponent from 'react-star-rating-component';

const ShelfGridModal = props => {
  const { openClose,
          openCloseModal,
          mangaInfo} = props;
          console.log(props);
  return(
    <Modal show={openClose}>
      <Modal.Header>
        <Modal.Title>{mangaInfo.title}</Modal.Title>
      </Modal.Header>

      <Modal.Body>
          <div className='bars-shelf-row-md'>
            <Col xs={12} sm={4}>
              <a className='bars-bookshelf-a ' href={`#/manga/${mangaInfo.id}`}>
                <Image responsive className="bookshelfPicture" src={mangaInfo.img_url}/>
              </a>
            </Col>

            <Col xs={12} sm={3} smOffset={0} md={3}>
              <div className='grid-md-left'>
                <Col xs={12}>
                  <a href={`#/manga/${mangaInfo.id}`}>
                    <div className='grid-comicTitle'>
                      {mangaInfo.title}
                    </div>
                  </a>
                </Col>
                <br />
                <br />
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

            <Col sm={0} md={2}>
              {mangaInfo.genre !== undefined ?
                <ul className="genres">Genres:
                  <li>{mangaInfo.genre[0]}</li>
                  <li>{mangaInfo.genre[1]}</li>
                  <li>{mangaInfo.genre[2]}</li>
                </ul> : null
              }
            </Col>

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
                <Col md={12}>
                  <div className="userShelfRating">
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

      <Modal.Footer>
        <Button
          onClick={openCloseModal}>
          Close
        </Button>
      </Modal.Footer>
  </Modal>
  );
}
export default ShelfGridModal;
