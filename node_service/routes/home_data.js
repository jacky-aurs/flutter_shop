const express = require('express');
const router = express.Router();
const bannerData = require('./data/banner_data');

router.post('', (req, res) => {
    res.json(bannerData);
});
module.exports = router;
