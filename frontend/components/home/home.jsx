

import React from 'react';

const Home = ( {manga} ) => (
  <main className="home-container">
    <div className="home-left">
      Home left
    </div>
    <div className="home-center">
      {
        manga.map((comic, i) => (
      <ul className="mangaHomeDisplay">
          <a href={`#/manga/${comic.id}`}>
            <img className="homePicture" src={comic.img_url} />
          </a>
          <ul className="homeMangaText">
          </ul>
      </ul>
      ))
     }
    </div>
    <ul>

    </ul>
    <div className="home-right">
      Home right
    </div>
  </main>
);

export default Home;
