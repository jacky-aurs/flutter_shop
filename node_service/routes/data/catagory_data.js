const base_url = require('../url');
const catagory_url = base_url.category_url;
const catagoryData = {
    'code': '200',
    'msg': 'success',
    'data': [
        {
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
        },
    ]
}
module.exports = catagoryData;