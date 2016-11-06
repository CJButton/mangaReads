


import React from 'react';

const MangaShow = ( {manga} ) => (
      <div className="single-manga-show">
        <div className="single-manga-picture">
          <li><img src={manga.img_url} /></li>
        </div>
        <ul className="single-manga-words">
          <li>{manga.title}</li>
          <br></br>
          <li>by {manga.author}</li>
          <br></br>
          <li>{manga.synopsis}</li>
        </ul>
      </div>
);

export default MangaShow;
