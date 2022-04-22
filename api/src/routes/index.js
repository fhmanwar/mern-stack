const express = require('express');
const { roleAll, roleId, roleAdd, roleUpd, roleDel } = require('../controllers/Role');

const router = express.Router();

router.get('/role', roleAll);
router.get('/role/:id', roleId);
router.post('/role/', roleAdd);
router.put('/role/:id', roleUpd);
router.delete('/role/:id', roleDel);

module.exports = router;