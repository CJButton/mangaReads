

import React from 'react';

const Home = ( {manga} ) => (
  <main className="home-container">
    <div className="home-left">
    </div>
    <ul>
      <li className="home-title">Welcome to mangaReads!</li>
      <br></br>
      <li className="home-description">Click on a manga below to get more infromation about it.</li>
      <li className="home-greeting">We hope you enjoy and discover a little more about Japan by reading these comics!</li>
    </ul>
    <div className="home-center">



      {manga.map((comic, i) => {
        return(
          <div className="library">
          <div className="comicWrapper">
            <a href={`#/manga/${comic.id}`}>
              <img className="homePicture" src={comic.img_url} />
            </a>
          </div>
        </div>
        );
      })}
      <br></br>
      <br></br>
    </div>

    <div className="home-right">
    </div>
  </main>
);

export default Home;

// <div className="home-left">
// </div>
// <div className="home-center">
//   <ul>
//   <li className="home-title">Welcome to mangaReads!</li>
//   <br></br>
//   <li className="home-description">Click on a manga below to get more infromation about it.</li>
//   <li className="home-greeting">We hope you enjoy and discover a little more about Japan by reading these comics!</li>
//   </ul>
//   {
//     manga.map((comic, i) => (
//   <ul key={i} className="mangaHomeDisplay">
//       <a href={`#/manga/${comic.id}`}>
//         <img className="homePicture" src={comic.img_url} />
//       </a>
//       <ul className="homeMangaText">
//       </ul>
//   </ul>
//   ))
//  }
// </div>
// <ul>
//
// </ul>
// <div className="home-right">
// </div>
