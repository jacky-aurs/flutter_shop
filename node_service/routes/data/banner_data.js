// module.exports = function(){
//     const base_url = require('./url');
//     const banner_url = base_url.banner_url;
//     return bannerData = {
//         'code': '200',
//         'msg': 'success',
//         'data': [
//             {
//                 "image": banner_url + '1.jpeg'
//             },
//             {
//                 "image": banner_url + '2.jpeg'
//             },
//             {
//                 "image": banner_url + '3.jpeg'
//             },
//             {
//                 "image": banner_url + '4.jpeg'
//             },
//             {
//                 "image": banner_url + '5.jpeg'
//             },
//         ]
//     }
// }
const base_url = require('../url');
const banner_url = base_url.banner_url;
const bannerData = {
    'code': '200',
    'msg': 'success',
    'data': [
        {
            "image": banner_url + '1.jpeg'
        },
        {
            "image": banner_url + '2.jpeg'
        },
        {
            "image": banner_url + '3.jpeg'
        },
        {
            "image": banner_url + '4.jpeg'
        },
        {
            "image": banner_url + '5.jpeg'
        },
    ]
}
module.exports = bannerData;