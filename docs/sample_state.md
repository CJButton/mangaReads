```js
{
  currentUser: {
    id: 1,
    username: "Satoshi"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createReview: {errors: ["Review can't be blank."]},
    addToShelf: {errors: ["Shelf cannot be blank."]}
  },
  bookshelves: {
      1: {
        title: "To-Read" {
          1: {
            cover: "img_id",
            title: "Kenshin",
            author: "Watsuki",
            synopsis: "...",
            img_url: "http://...",
          }
        }
      }
  },
  reviews: {
    1: {
      manga_id: 1,
      user_id: 1,
      title: "Best comic ever",
      body: "A long time ago in Edo..",
      star_rating: 5
    }
  },
  manga: {
    1: {
      id: 1,
      title: "Ruroni Kenshin",
      author: "Nobuhiro Watsuki",
      synopsis: "The story begins during the 11th year of the Meiji period in Japan and follows a former assassin from the Bakumatsu, known as Hitokiri Battosai. After his work against the bakufu, Hitokiri Battosai disappears to become Himura Kenshin: a wandering samurai who protects the people of Japan with a vow of never to take another life.",
      img_url: "url goes here"
    }
  }
}
