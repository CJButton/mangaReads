

**API Endpoints**

HTML API
Root
  GET / -loads React web app

**JSON API**

 Users
  - POST /api/users
  - PATCH /api/users
  - GET api/users/:id
        Find a specific user
  - GET api/users/:id/edit
        Able to edit ones own information

Session
  - POST /api/session
  - DELETE /api/session
  - GET /api/session

Manga
  - GET /api/manga/:id

        Getting information on a specific comic
  - PATCH /api/manga/:id

    For adding reviews

Reviews
  - GET /api/manga/id/reviews

        Find the all reviews for a specific comic
  - POST /api/manga/id/reviews/

        Create a review
  - PATCH /api/manga/id/reviews/edit

        Want to be able to edit our review later
