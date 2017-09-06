import React from 'react';

import { Modal,
         Button } from 'react-bootstrap';

const ShelfGridModal = props => {
  const { openClose,
          openCloseModal } = props;

  return(
    <Modal show={openClose}>
      <Modal.Header>
        <Modal.Title>Manga Info</Modal.Title>
      </Modal.Header>

      <Modal.Body>
        This is where the info will go later.
      </Modal.Body>

      <Modal.Footer>
        <Button
          onClick={openCloseModal}>
          Close
        </Button>
      </Modal.Footer>
  </Modal>
  );
}
export default ShelfGridModal;
