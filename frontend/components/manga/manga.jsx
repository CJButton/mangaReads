


import React from 'react';
import { Link } from 'react-router';

const MangaShow = ({id, title, author, synopsis, img_url}) => (
      <div className="single-manga-show">
        <div className="single-manga-words">
          <li>{title}</li>
          <li>{author}</li>
          <li>{synopsis}</li>
        </div>
        <div className="single-manga-picture">
          <li><img src={img_url} /></li>
        </div>
      </div>
);

export default MangaShow;
