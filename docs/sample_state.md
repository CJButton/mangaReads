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
            avg_rating: 4.5,
            shelves: ["To-Read", "Classics"],
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
  }
}
```
