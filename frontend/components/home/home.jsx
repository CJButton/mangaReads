

import React from 'react';

const Home = ( {manga} ) => (
  <main className="home-container">
    <div className="home-left">
      Home left
    </div>
    <div className="home-center">
      "Please excuse our dust!"
      <br></br>
      "Haven't quite finished search/shelves yet."
      <br></br>
      "To see an example of an individual manga, please visit manga/2"
      <li></li>
      <ul>
        {manga.map((comic, i) => (
          <li key={i}>
            {comic.title}
          </li>
        ))}

      </ul>
    </div>
    <ul>

    </ul>
    <div className="home-right">
      Home right
    </div>
  </main>
);

export default Home;
