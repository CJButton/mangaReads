


export const CHANGE_MANGA_STATUS = "CHANGE_MANGA_STATUS";
export const RECEIVE_MANGA_STATUS = "RECEIVE_MANGA_STATUS";
export const RECEIVE_MANGA_STATUS_ERRORS = "RECEIVE_MANGA_STATUS_ERRORS";
export const REQUEST_MANGA_STATUS = "REQUEST_MANGA_STATUS";

export const requestAllStatus = () => ({
  type: REQUEST_ALL_STATUS
});

export const receiveAllStatus = (statuses) => ({
  type: RECEIVE_ALL_STATUS,
  statuses
});

export const changeMangaStatus = (readStatus, mangaId) => ({
  type: CHANGE_MANGA_STATUS,
  readStatus,
  mangaId
});

export const receiveMangaStatus = (readStatus, mangaId) => ({
  type: RECEIVE_MANGA_STATUS,
  readStatus,
  mangaId
});

export const receiveMangaStatusErrors = (errors) => ({
  type: RECEIVE_MANGA_STATUS_ERRORS,
  errors
});

export const requestMangaStatus = (mangaId) => ({
  type: REQUEST_MANGA_STATUS,
  mangaId
});
