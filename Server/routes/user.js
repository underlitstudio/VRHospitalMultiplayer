const express = require('express');
const {
    userById,
    allUsers,
    getUser,
    updateUser,
    deleteUser,
    userPhoto,
    addFriend,
    removeFriend,
    findPeople,
    hasAuthorization,
    Cards
} = require('../controllers/user');
const { requireSignin } = require('../controllers/auth');

const router = express.Router();

router.get('/secret/:userId', requireSignin, (req, res) => {
    res.json({
        user: req.profile
    });
});

// router.get('/hello', requireSignin, (req, res) => {
//     res.send('Hello');
// });

router.put('/user/friendAdd', requireSignin, addFriend, addFriend);
router.put('/user/friendRemove', requireSignin, removeFriend, removeFriend);

router.get('/users', allUsers);
router.get('/user/:userId', requireSignin, getUser);
router.put('/user/:userId', requireSignin, hasAuthorization, updateUser);
router.delete('/user/:userId', requireSignin, hasAuthorization, deleteUser);
//router.post('/gameCard',requireSignin, Cards );
router.get('/user/photo/:userId', userPhoto);


router.get('/user/findpeople/:userId', requireSignin, findPeople);


router.param('userId', userById);

module.exports = router;
