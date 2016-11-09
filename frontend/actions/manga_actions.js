


export const RECEIVE_ALL_MANGA = "RECEIVE_ALL_MANGA";
export const REQUEST_ALL_MANGA = "REQUEST_ALL_MANGA";
export const REQUEST_MANGA = "REQUEST_MANGA";
export const RECEIVE_MANGA = "RECEIVE_MANGA";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const requestAllManga = (shelf) => ({
  type: REQUEST_ALL_MANGA,
  shelf
});

export const receiveAllManga = (manga) => ({
  type: RECEIVE_ALL_MANGA,
  manga
});

export const requestManga = (id) => ({
  type: REQUEST_MANGA,
  id
});

export const receiveManga = (manga) => ({
  type: RECEIVE_MANGA,
  manga
});

export const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
});
