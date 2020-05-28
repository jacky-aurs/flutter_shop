const config = require('./config');
const base_url = `http://${config.IP}:${config.PORT}`;
const image_url = base_url + '/images/'
const Url = {
    'banner_url': image_url +'banner/',
    'category_url': image_url +'category/',
    'floor_url': image_url + 'floor/'
}
module.exports = Url;