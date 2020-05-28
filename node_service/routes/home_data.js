const express = require('express');
const router = express.Router();
const bannerData = require('./data/banner_data');

// console 
router.get('/', (req, res) => {
    var parameter = req.query.type;
    console.error(parameter);
    if (parameter == 'undefined') {
        res.send('参数有误,请检查参数');
    } else if (typeof (parameter) != 'string') {
        res.send('请检查参数类型');
    } else {
        if (parameter == 'banner') {
            alert(parameter);
            data = bannerData;
        } else if (parameter == 'category') {

        } else if (parameter == 'des') {

        }else{
            res.send("请检查参数是否正确");
        }
    }
    res.send(data);
});
module.exports = router;
