

## mangaReads ##

How do we leave a link here to an outside website?
[mangaReads](https://mangareads.herokuapp.com/#/login)


mangaReads is a full-stack web application inspired by GoodReads. This site utilizes Ruby on Rails on the backend, a PostgreSQL database,
and React.js with a Redux architectural framework on the frontend.

## Features and Implementation ##

Manga (Japanese for comics) are stored on the database in a table, with columns for title, author, a synopsis, and an image url. When a user logs in, they are directed to Home Page which displays a collection of comics to purview. At the top of the page is a 'Topbar' component. This component is always available to the user, and is nested inside the App component which wraps all others. Thus the Topbar is available to users at all times.

Upon clicking a comic that piques the users interest, they are directed then to a separate page that displays the manga's data.
The entire page is rendered using only one component, which displays the manga's title, author, synopsis, and a picture of the cover. When the user switches to the manga's individual show page, three API calls are dispatched. The first to get the information for the particular comic, another for the user's bookshelves, and finally, another to compare the 'status' of the page.

The 'status' feature is particularly interesting as it brings together the user's table, the 'manga status' table, the bookshelves table, and the 'manga bookshelves' table. The latter of which is a joins table, we can change the 'status' of particular manga. A manga's status can be one of three things: 'Read', 'Wants-To-Read', or 'Currently-Reading'.

When the user clicks on a dropdown menu, a dispatch is made which in turn dispatches an API call. This will hit a custom route that was created to 'create and destroy' objects on the 'manga bookshelf' table. So if they click once, then a manga is metaphorically placed on/ or removed from these special shelves.

This involves makes several complicated joins which took me some times to get correct. I realized on making this in the model that I in fact needed a little more information to make the proper requests. And thus I learned about pluck, which allows us to get the actual value from a query!

This page also brings together a few other elements to make it a little more interesting. We also bring together a 'bookshelves' table, a 'manga_statuses' table, and the user's table. By using the current user's id, we find their specific bookshelves that they have made as the 'status' of the manga. The status represents whether the user 'Wants to Read', is 'Currently-Reading', or has 'Read' the particular comic. The user may change this status with a click. At the bottom of the page. At the bottom of the page are the user's bookshelves, ordered in a checkbox fashion, allowing them to add to however many shelves they wish.

We can also add our own custom libraries. Using a checkbox feature, a comic can be added to any shelf at will. When the shelf is checked, a dispatch is sent which in the end will place an object, representing the manga on the shelf.
