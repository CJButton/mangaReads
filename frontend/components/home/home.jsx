

import React from 'react';
import Slider from 'react-image-slider';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';
class Home extends React.Component{
  constructor(props) {
    super(props);
  }

 render() {
   ///
   //background-color of #root chnged to grey to help with nighttime
   ///
  const actions = this.props.manga.action;
  const romances = this.props.manga.romance;
  const drama = this.props.manga.drama;
  console.log(this.props.manga);
    return (
      <div className='home-wrapper'>
        <TopBarContainer />
        <h3>
          Action
        </h3>
      {actions &&
        <div className='slider-wrapper'>
          <Slider actions={actions} delay={1000000}>
            {actions.map((comic, i) =>
              <div key={i} className='slider-img'>
                <img src={comic.img_url} />
              </div>)}
          </Slider>
        </div>
      }
      <br />
      <br />
      <h3>
        Romance
      </h3>
      {romances &&
        <div className='slider-wrapper'>
          <Slider romances={romances} delay={1000000}>
            {romances.map((comic, i) =>
              <div key={i}>
                <img src={comic.img_url} />

                </div>)}
          </Slider>
        </div>
      }
      <br />
      <br />
      <h3>
        Drama
      </h3>
      {drama &&
        <div className='slider-wrapper'>
          <Slider drama={drama} delay={1000000}>
            {drama.map((comic, i) =>
              <div key={i}>
                <img src={comic.img_url} />

                </div>)}
          </Slider>
        </div>
      }
      </div>
      );
  }
};

export default Home;
