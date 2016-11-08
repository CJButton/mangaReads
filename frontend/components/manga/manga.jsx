


import React from 'react';

const MangaShow = ( {manga} ) => (
      <div className="single-manga-show">
        <div className="single-manga-picture">
          <li><img src={manga.img_url} width="210" height="300"/></li>
        </div>
        <ul className="single-manga-words">
          <li className="mangaHomeTitle">{manga.title}</li>
          <br></br>
          <li>by {manga.author}</li>
          <br></br>
          <li className="mangaHomeWords">{manga.synopsis}</li>
        </ul>
      </div>
);

export default MangaShow;
