const base_url = require('../url');
const banner_url = base_url.banner_url;
const catagory_url = base_url.category_url;
const bannerData = {
    "errocode": "0",
    "msg": "success",
    "data":
    {
        "bannerData": [{
            "image": banner_url + '1.jpeg',
            "goods": "001"
        },
        {
            "image": banner_url + '2.jpeg',
            "goods": "002"
        },
        {
            "image": banner_url + '3.jpeg',
            "goods": "003"
        },
        {
            "image": banner_url + '4.jpeg',
            "goods": "004"
        },
        {
            "image": banner_url + '5.jpeg',
            "goods": "005"
        }
        ],
        "catagoryData": [{
            "image": catagory_url + 'beixin.png',
            "title": "背心"
        },
        {
            "image": catagory_url + 'duanku.png',
            "title": "短裤"
        },
        {
            "image": catagory_url + 'fenyi.png',
            "title": "风衣"
        },
        {
            "image": catagory_url + 'shangzhuang.png',
            "title": "上装"
        },
        {
            "image": catagory_url + 'taozhuang.png',
            "title": "套装"
        },
        {
            "image": catagory_url + 'waitao.png',
            "title": "外套"
        },
        {
            "image": catagory_url + 'weiyi.png',
            "title": "卫衣"
        },
        {
            "image": catagory_url + 'zhensixiazhuang.png',
            "title": "真丝下装"
        }
        ],
        "recoment": [{
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "001",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "002",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "003",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "004",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "005",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "006",

        },
        {
            "name": "阿斯科利记得看马赛克的借记卡说",
            "image": banner_url + '1.jpeg',
            "goods": "007",

        },
        ],
        "floorPic": [
            {
                "image": banner_url + '1.jpeg',
                "goods": "001"
            },

        ],
        "floor1": [
            {
                "image": banner_url + '1.jpeg',
                "goods": "001"
            },
            {
                "image": banner_url + '2.jpeg',
                "goods": "002"
            },
            {
                "image": banner_url + '3.jpeg',
                "goods": "003"
            },
            {
                "image": banner_url + '4.jpeg',
                "goods": "004"
            },
            {
                "image": banner_url + '5.jpeg',
                "goods": "005"
            }
        ]
    },
}
module.exports = bannerData;