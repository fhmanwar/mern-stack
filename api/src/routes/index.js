const express = require('express');
const { roleAll } = require('../controllers/Role');

const router = express.Router();

router.get('/role', roleAll);
// router.get('/:id',getIdRole);

module.exports = router;