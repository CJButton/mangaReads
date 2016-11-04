


import React from 'react';

const MangaShow = ( {manga} ) => (
      <div className="single-manga-show">
        <ul className="single-manga-words">
          <li>おはようございます</li>
          <li>title: {manga.title}</li>
          <li>{manga.author}</li>
          <li>{manga.synopsis}</li>
        </ul>
        <div className="single-manga-picture">
          <li><img src={manga.img_url} /></li>
        </div>
      </div>
);

export default MangaShow;
