

**Component Hierarchy:**

AuthFormContainer
  - AuthForm

TopBarContainer
  - Topbar

BookshelfContainer
  - Bookshelf

MangaContainer
  - MangaInfo

UpdatesContainer
  - UserContainer
  - Updates

UserContainer
  - User

SearchContainer
  - SearchResults

ReviewFormContainer
  - Review

**Routes**

  Path   |            Component
------------------|---------------------
"/"                |         AuthFormContainer
"/sign-in"          |        AuthFormContainer
"/sign-up"           |       AuthFormContainer
"/home"              |       HomeContainer
"/my-Manga"          |       BookshelfContainer  
"/search"            |       SearchContainer
"/manga/id"          |       MangaContainer
"/user/id"           |       UserComponent
"/manga/id/review"   |       ReviewFormContainer
