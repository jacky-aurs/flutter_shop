const express = require('express');
const router = express.Router();
const bannerData = require('./data/banner_data');
// const bodyParse = require('body-parser')
// app.use(bodyParse.urlencoded({extended:false}))
// app.use(bodyParse.json())
// console 
router.post('', (req, res) => {
    // var parameter = req.body.type;
    // const result = req.body;
    // console.error(parameter);
    // if (result == 'undefined') {
    //     res.json('参数有误,请检查参数');
    // } else if (typeof (parameter) != 'string') {
    //     res.json('请检查参数类型');
    // } else {
        // if (result == 'homedata') {
            // result = bannerData;
        // } else {
        //     res.json("请检查参数是否正确");
        // }
    // }
    res.json(bannerData);
});
module.exports = router;
