import React from 'react';

import { Modal } from 'react-bootstrap';

const deleteModal = (
  <div className="delete-modal">
    <Modal.Dialog>
      <Modal.Header>
        <Modal.Title>Delete this shelf?</Modal.Title>
      </Modal.Header>

      <Modal.Body>
        One fine body...
      </Modal.Body>

      <Modal.Footer>
        <Button>Close</Button>
        <Button bsStyle="primary">Save changes</Button>
      </Modal.Footer>

    </Modal.Dialog>
  </div>
);
