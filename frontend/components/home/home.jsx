

import React from 'react';

import TopBarContainer from '../topbar/topbar_container';

const Home = ( props ) => {
  // <a href={`#/manga/${comic.id}`}></a>
  const actions = props.manga.action;
  const romances = props.manga.romance;
    return (
  <main className="home-container">
    <TopBarContainer />
    <div className="home-left"></div>
      <div className="home-center">
      {actions &&
        <div>
          {actions.map((comic, i) => {
            return(
              <div key={i} className="library">
                <div className="comicWrapper">
                  <img className="homePicture" src={comic.img_url} />
                </div>
              </div>
            );
          })}
        </div>
      }
      <br></br>
      <br></br>
      </div>


    <div className="home-right">
    </div>
  </main>



  );
};

export default Home;
