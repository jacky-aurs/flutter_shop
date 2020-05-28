const express = require('express');
const router = express.Router();
const config = require('./config');
const base_url = `http://${config.IP}:${config.PORT}${'/images/banner/'}`
router.get('/',(req,res)=>{

    var data = {
        'code':'200',
        'msg': 'success',
        'data': [
            {
                "image": base_url + '1.jpeg'
            },
            {
                "image": base_url + '2.jpeg'
            },
            {
                "image": base_url + '3.jpeg'
            },
        ]
        
    };

    res.send(data);
})

module.exports = router;
