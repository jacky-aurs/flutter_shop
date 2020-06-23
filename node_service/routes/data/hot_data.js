const base_url = require('../url');
const catagory_url = base_url.category_url;
const express =require('express');
const router = express.Router();

const hotData = {
    'code': '200',
    'msg': 'success',
    'data': [
        {
            "image": catagory_url + 'beixin.png',
            "goods":"001",
            "presentPrice":"132.0",
            "oriPrice":"82"
        },
        {
            "image": catagory_url + 'duanku.png',
            "goods":"002",
            "presentPrice":"1623.0",
            "oriPrice":"374"
        },
        {
            "image": catagory_url + 'fenyi.png',
            "goods":"003",
            "presentPrice":"2378.0",
            "oriPrice":"1923"
        },
        {
            "image": catagory_url + 'shangzhuang.png',
            "goods":"004",
            "presentPrice":"01923.0",
            "oriPrice":"234"
        },
        {
            "image": catagory_url + 'taozhuang.png',
            "goods":"005",
            "presentPrice":"9123.0",
            "oriPrice":"123213"
        },
        {
            "image": catagory_url + 'waitao.png',
            "goods":"006",
            "presentPrice":"8273.0",
            "oriPrice":"263"
        },
        {
            "image": catagory_url + 'weiyi.png',
            "goods":"007",
            "presentPrice":"123.0",
            "oriPrice":"92"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods":"008",
            "presentPrice":"81.0",
            "oriPrice":"80"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods":"009",
            "presentPrice":"81.0",
            "oriPrice":"80"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods":"010",
            "presentPrice":"81.0",
            "oriPrice":"80"
        },
    ]
}
router.post('', (req, res) => {
    res.json(hotData);
});
module.exports = router;