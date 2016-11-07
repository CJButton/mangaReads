


import React from 'react';

const Bookshelf = ({bookshelf}) => (
  <bookshelves className="bookshelves">
    <div>
      <li>{bookshelf.title}</li>
    </div>
  </bookshelves>
);



// class Bookshelf extends React.component{
//   constructor(props) {
//     super(props);
//   }
//
//   render() {
//     return (
//       <div>
//       "Hello from the Bookshelf component!"
//       </div>
//     );
//   }
// }

export default Bookshelf;
