


export const CHANGE_MANGA_STATUS = "CHANGE_MANGA_STATUS";
export const RECEIVE_MANGA_STATUS = "RECEIVE_MANGA_STATUS";
export const RECEIVE_MANGA_STATUS_ERRORS = "RECEIVE_MANGA_STATUS_ERRORS";

// request from component
export const changeMangaStatus = (readStatus, mangaId) => ({
  type: CHANGE_MANGA_STATUS,
  readStatus,
  mangaId
});

// returning from api
export const receiveMangaStatus = (readStatus, mangaId) => ({
  type: RECEIVE_MANGA_STATUS,
  readStatus,
  mangaId
});

export const receiveMangaStatusErrors = (errors) => ({
  type: RECEIVE_MANGA_STATUS_ERRORS,
  errors
});
