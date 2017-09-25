

import React from 'react';

import TopBarContainer from '../topbar/topbar_container';

const Home = ( {manga} ) => {
  // <a href={`#/manga/${comic.id}`}></a>
  console.log(manga);
    return (
  <main className="home-container">
    <TopBarContainer />
    <div className="home-left"></div>
    {/*
      <div className="home-center">
      {manga.action.map((comic, i) => {
      return(
      <div key={i} className="library">
      <div className="comicWrapper">
      <img className="homePicture" src={comic.img_url} />
      </div>
      </div>
      );
      })}
      <br></br>
      <br></br>
      </div>

      */}

    <div className="home-right">
    </div>
  </main>



  );
};

export default Home;
