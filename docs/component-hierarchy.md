

Component Hierarchy:

AuthFormContainer
  - AuthForm

HomeContainer
  - Topbar

BookshelfContainer
  - Bookshelf
    - MangaInfo

MangaContainer
  - MangaInfo

RecommendationContainer
  - Recommendation

UpdatesContainer
  - Updates
    - Users

UserComponent
  - Bookshelf

SearchContainer
  - SearchResults
    - MangaInfo

ReviewFormContainer
  - MangaInfo
    - Review

Routes

Path                        Component
"/"                         AuthFormContainer
"/sign-in"                  AuthFormContainer
"/sign-up"                  AuthFormContainer
"/home"                     HomeContainer
"/home/myManga"             BookshelfContainer  
"/search"                   SearchContainer
"/manga/id"                 MangaContainer
"/user/id"                  UserComponent
"/manga/id/review"          ReviewFormContainer
