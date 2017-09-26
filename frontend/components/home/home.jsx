

import React from 'react';
import Slider from 'react-slick';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';

function SampleNextArrow(props) {
  const {className, style, onClick} = props
  return (
    <div
      className={className}
      style={{style, height: '100%', 'padding-top': '13%', 'background': 'rgba(0, 0, 0, 0.5);'}}
      onClick={onClick} />
  );
}

function SamplePrevArrow(props) {
  const {className, style, onClick} = props
  return (
    <div
      className={className}
      style={{style, height: '100%', 'padding-top': '13%', 'background': 'rgba(0, 0, 0, 0.5);'}}
      onClick={onClick} />
  );
}

const Home = ( props ) => {

  // dots: false,
  // slidesToShow: 4.25,
  // infinite: true,
  // slidesToScroll: 3,
  const settings = {
     dots: false,
     slidesToShow: 5,
     infinite: true,
     slidesToScroll: 5,
     nextArrow: <SampleNextArrow />,
     prevArrow: <SamplePrevArrow />
   };

   ///
   //background-color of #root chnged to black to help with nighttime
   ///
  const actions = props.manga.action;
  const romances = props.manga.romance;
    // <Image responsive className="bookshelfPicture" src={comic.img_url}/>
    // <img key={i} src={comic.img_url} />
    return (
  <div>
    <TopBarContainer />
    {actions &&
      <div className='home-sider-action'>
        <Slider {...settings}>
          {actions.map((comic, i) => {
            return(
              <div>
                <div className='home-slider-img'>
                  <Image responsive src={comic.img_url} />
                </div>
              </div>
            )
          })}
        </Slider>
      </div>
    }
  </div>

  );
};

export default Home;
