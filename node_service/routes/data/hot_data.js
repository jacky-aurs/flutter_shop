const base_url = require('../url');
const catagory_url = base_url.category_url;
const express = require('express');
const router = express.Router();

const hotData = {
    'code': '200',
    'msg': 'success',
    'data': [
        {
            "image": catagory_url + 'beixin.png',
            "goods": "001",
            "presentPrice": "132.0",
            "oriPrice": "82",
            "details": "哈就睡大街啊是"
        },
        {
            "image": catagory_url + 'duanku.png',
            "goods": "002",
            "presentPrice": "1623.0",
            "oriPrice": "374"
            ,
            "details": "哦啊睡大街啊是多久"
        },
        {
            "image": catagory_url + 'fenyi.png',
            "goods": "003",
            "presentPrice": "2378.0",
            "oriPrice": "1923"
            ,
            "details": "哦啊四点就开完会就开打"
        },
        {
            "image": catagory_url + 'shangzhuang.png',
            "goods": "004",
            "presentPrice": "01923.0",
            "oriPrice": "234"
            ,
            "details": "哦且三等奖可那时的你"
        },
        {
            "image": catagory_url + 'taozhuang.png',
            "goods": "005",
            "presentPrice": "9123.0",
            "oriPrice": "123213"
            ,
            "details": "起哦呜阿胶啊是看到女明白v"
        },
        {
            "image": catagory_url + 'waitao.png',
            "goods": "006",
            "presentPrice": "8273.0",
            "oriPrice": "263"
            ,
            "details": "我瞥技术开发环境变仙女们出现"
        },
        {
            "image": catagory_url + 'weiyi.png',
            "goods": "007",
            "presentPrice": "123.0",
            "oriPrice": "92"
            ,
            "details": "破哦为大部分蚵仔面线不错"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods": "008",
            "presentPrice": "81.0",
            "oriPrice": "80"
            ,
            "details": "阿文i额和借古讽今不能吃小吃v这么难相处"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods": "009",
            "presentPrice": "81.0",
            "oriPrice": "80"
            ,
            "details": "i起哦呜呃代表翻江倒海尽可能项目支持"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "goods": "010",
            "presentPrice": "81.0",
            "oriPrice": "80"
            ,
            "details": "起哦为iu饿哦i完全就会疯狂的烦恼"
        },
    ]
}
router.post('', (req, res) => {
    res.json(hotData);
});
module.exports = router;