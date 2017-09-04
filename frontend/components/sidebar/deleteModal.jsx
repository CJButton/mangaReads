import React from 'react';

import { Modal,
         Button } from 'react-bootstrap';

const DeleteShelfModal = props => {
  const { openClose,
          closeDeleteModal,
          deleteShelf } = props;
          console.log(props);
  return(
    <Modal show={openClose}>
      <Modal.Header>
        <Modal.Title>Delete?</Modal.Title>
      </Modal.Header>

      <Modal.Body>
        Are you sure you wish to delete this shelf?
      </Modal.Body>

      <Modal.Footer>
        <Button
          onClick={closeDeleteModal}>
          No. Return!
        </Button>
        <Button
          onClick={deleteShelf}>Yes. Delete!</Button>
      </Modal.Footer>
  </Modal>
  );
}
export default DeleteShelfModal;
