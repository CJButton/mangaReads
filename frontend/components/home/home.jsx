

import React from 'react';

const Home = ( {manga} ) => (
  <main className="home-container">
    <div className="home-left">
    </div>
    <div className="home-center">
      {
        manga.map((comic, i) => (
      <ul key={i} className="mangaHomeDisplay">
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
    </div>
  </main>
);

export default Home;
