

import React from 'react';
import Slider from 'react-slick';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';

const Home = ( props ) => {
  const settings = {
     dots: false,
     slidesToShow: 5
   };

   ///
   //background-color of #root chnged to black to help with nighttime
   ///
  const actions = props.manga.action;
  const romances = props.manga.romance;
    // <Image responsive className="bookshelfPicture" src={comic.img_url}/>
    // <img key={i} src={comic.img_url} />
    return (
  <main className="home-container">
    <TopBarContainer />
    {actions &&
      <Slider {...settings}>
        {actions.map((comic, i) => {
          return(
            <div>
              <Image responsive src={comic.img_url}/>
            </div>
          )
        })}
      </Slider>
    }
  </main>



  );
};

export default Home;
