import React from 'react';

import { Modal,
         Button } from 'react-bootstrap';

const DeleteShelfModal = props => {
  const { openClose,
          closeDeleteModal } = props;
          console.log(props);
  return(
    <Modal show={openClose}>
      <Modal.Header>
        <Modal.Title>Delete this shelf?</Modal.Title>
      </Modal.Header>

      <Modal.Body>
        One fine body...
      </Modal.Body>

      <Modal.Footer>
        <Button
          onClick={closeDeleteModal}>
          Close
        </Button>
        <Button bsStyle="primary">Save changes</Button>
      </Modal.Footer>
  </Modal>
  );
}
export default DeleteShelfModal;
