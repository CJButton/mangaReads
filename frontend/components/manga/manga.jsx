


import React from 'react';

const MangaShow = ( {manga} ) => (
      <div className="single-manga-show">
        <div className="single-manga-picture">
          <li><img src={manga.img_url} /></li>
        </div>
        <ul className="single-manga-words">
          <li>おはようございます</li>
          <li>title: {manga.title}</li>
          <li>author: {manga.author}</li>
          <li>synopsis: {manga.synopsis}</li>
        </ul>
      </div>
);

export default MangaShow;
