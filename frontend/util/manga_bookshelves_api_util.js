



export const toggleMangaBookshelf = (shelfId, mangaId, success, error) => {
  $.ajax({
    // we want the TOGGLE action in the controller, our custom action
    type: 'POST',
    url: 'api/mangabookshelves',
    data: {shelfId, mangaId},
    success,
    error
  });
};
