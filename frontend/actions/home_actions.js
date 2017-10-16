
export const REQUEST_ALL_HOME = "REQUEST_ALL_HOME";
export const RECEIVE_ALL_HOME = "RECEIVE_ALL_HOME";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const requestAllHome = () => ({
  type: REQUEST_ALL_HOME
});

export const receiveAllHome = (allComics) => ({
  type: RECEIVE_ALL_HOME,
  allComics
});

export const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
});
