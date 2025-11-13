// Admin login route
const adminLogin = async (req, res) => {
    const { email, password } = req.body;
    // TODO: Implement admin authentication logic
    res.status(501).send({ error: 'Admin login not yet implemented' });
};

module.exports = {
    adminLogin
};

