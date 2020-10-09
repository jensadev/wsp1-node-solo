const express = require('express');
const router = express.Router();
const { query } = require('../models/db');

router.get('/:id', async function (req, res, next) {
    console.log(req.params);

    try {
        const story = await query(
            'SELECT * FROM story WHERE id = ?',
            req.params.id
        );
        
        const links = await query(
            'SELECT * FROM links WHERE story_id = ?',
            req.params.id
        );
    
        res.render('story', {
            title: 'Story',
            id: req.params.id,
            story: story,
            links: links,
        });
    }
    catch(e) {
        console.error(e);
    }
});

module.exports = router;
