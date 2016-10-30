
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
            date_read: [Oct., 29th, 2007],
            date_added: [Oct., 29th, 2016]
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




{
  currentUser: {
    id: 1,
    username: "app-academy"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createNote: {errors: ["body can't be blank"]}
  },
  notes: {
    1: {
      title: "Sample State",
      body: "is useful to plan",
      author_id: 1,
      notebook_id: 1
      tags: {
        1: {
          id: 1
          name: "Coding"
        }
      }
    }
  },
  notebooks: {
    1: {
      title: "Redux",
      author_id: 1,
      description: "is cool"
    }
  }
  tagFilters: [1, 7, 14] // Used to track selected Tags for filtering of notes
}
