const roleModel = require('../models/roleModel')

const roleAll = async (req, res, next) => {
    try {
        const [status, data] = await roleModel.getAll();
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
        next(e);
        // return res.status(500).json({
        //     code: -1,
        //     msg: e.message,
        //     data: [],
        // });
    }
};

const roleId = async (req, res, next) => {
    try {
        console.log(req.params.id);
        const [status, data] = await roleModel.getId(req.params.id, next);
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
        next(e);
        // return res.status(500).json({
        //     code: -1,
        //     msg: e.message,
        //     data: [],
        // });
    }
};

const roleAdd = async (req, res, next) => {
    try {
        console.log(req.body);
        const [status, data] = await roleModel.add(req.body, next);
        console.log(data);
        if (status == 0) {
            return res.status(201).json({
                code: status,
                msg: "Succesfully",
                data: [],
            });
        } 
        
        return res.status(200).json({
            code: status,
            msg: "Succesfully",
            data: data,
        });

    } catch (e) {
        console.log(e);
        next(e);
        // return res.status(500).json({
        //     code: -1,
        //     msg: e.message,
        //     data: [],
        // });
    }
};

const roleUpd = async (req, res, next) => {
    try {
        console.log(req.body);
        const [status, data] = await roleModel.upd(req.body, req.params.id, next);
        console.log(data);
        if (status == 0) {
            return res.status(201).json({
                code: status,
                msg: "Succesfully",
                data: [],
            });
        } 
        
        return res.status(200).json({
            code: status,
            msg: "Succesfully",
            data: data,
        });

    } catch (e) {
        console.log(e);
        next(e);
        // return res.status(500).json({
        //     code: -1,
        //     msg: e.message,
        //     data: [],
        // });
    }
};

const roleDel = async (req, res, next) => {
    try {
        console.log(req.params.id);
        const [status, data] = await roleModel.del(req.params.id, next);
        console.log(data);
        if (status == 0) {
            return res.status(201).json({
                code: status,
                msg: "Succesfully",
                data: [],
            });
        } 
        
        return res.status(200).json({
            code: status,
            msg: "Succesfully",
            data: data,
        });

    } catch (e) {
        console.log(e);
        next(e);
        // return res.status(500).json({
        //     code: -1,
        //     msg: e.message,
        //     data: [],
        // });
    }
};

module.exports = {
    roleAll,
    roleId,
    roleAdd,
    roleUpd,
    roleDel,
}