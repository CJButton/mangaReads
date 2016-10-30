
MangaReads
----------

MangaReads is a web application inspired by GoodReads built using Ruby on Rails and React/Redux. By the end of Week 9, this app will, at a minimum, satisfy the following criteria with smooth, bug-free navigation, adequate seed data and sufficient CSS styling:
Goodreads

  - Hosing on Heroku
  - New account creation, login, and a guest/demo login
  - Manga (Japanese comic books)
  - Bookshelves (allow us to organize our comics in our own choosing)
  - Reviews
  - Read Status (read, reading, want to read, etc.)
  - Production README sample

Design Docs
[View Wireframes](docs/wireframes)
[React-Components](docs/component-hierarchy.md)
[API-Endpoints](docs/api-endpoints.md)
[DB Schema](docs/schema.md)
[Sample State](sample-state.md)


Implementation Timeline

Phase 1: Backend setup and Front End User Authentication (2 days)
Objective: Functioning rails project with front-end Authentication

Phase 2: Models, API, and components (3 days)
Objective: Bookshelves can be created, added to, and destroyed through the API.
            Reviews can created, read, edited, destroyed through the API.

Phase 3: Reviews (2 days)
Objective: Reviews belong to a specific Manga, and can be created, read, edited and destroyed through the API.

Phase 4: Search (1 day)
Objective: Manga can be searched for by title or author through the API.

Phase 5: Bookshelves (1 day)
Objective: Manga can be added/tagged with bookshelves.

Phase 6: Read Status(1 day)
Objective: The status of a book on a bookshelf, can be changed.

Phase 7: Allow Complex Styling (1 day)
Objective: Allow rich text editing of Reviews

Bonus Features:
- Chat feature to discuss the book with others live
- Tags
- Search across multiple models
