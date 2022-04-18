const roleModel = require('../models/roleModel')

const roleAll = async (req, res) => {
    try {
        const [status, data] = await roleModel.getAllRole();
        console.log(data);
        if (status < 1) {
            return res.status(200).json({
                code: status,
                msg: "Succesfully",
                data: [],
            });
        }

        return res.status(201).json({
            code: status,
            msg: "Succesfully",
            data: data,
        });

    } catch (e) {
        console.log(e);
        return res.status(500).json({
            code: -1,
            msg: e.message,
            data: [],
        });
    }
};

module.exports = {
    roleAll,
}