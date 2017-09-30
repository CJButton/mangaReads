

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

    this.comicHoverEnter = this.comicHoverEnter.bind(this);
    this.comicHoverLeave = this.comicHoverLeave.bind(this);
  }

  comicHoverEnter(id) {
    console.log(`entered comic ${id}`);
  }

  comicHoverLeave(id) {
    console.log(`left comic ${id}`);
  }

 render() {
   ///
   //background-color of #root chnged to grey to help with nighttime
   ///
  const actions = this.props.manga.action;
  const romances = this.props.manga.romance;
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
                <img
                  onMouseEnter={() => this.comicHoverEnter(i)}
                  onMouseLeave={() => this.comicHoverLeave(i)}
                  src={comic.img_url} />
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
            {romances.map((comic, i) => <div key={i}><img src={comic.img_url} /></div>)}
          </Slider>
        </div>
      }
      </div>
      );
  }
};

export default Home;
