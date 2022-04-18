const { dbConn } = require("../config");

const getAllRole = async () => {
    try {
        const [rows, fields] = await dbConn.promise().query('SELECT * from roles');
        if (rows.length > 0) {
            console.log([1, rows]);
            return [1, rows];
        } else {
            return [0, null];
        }
    } catch (e) {
        return [-1, e.message];
    }
};

const getIdRole = async () => {
    try {
        const [rows, fields] = await dbConn.promise().query('SELECT * from roles');
    } catch (error) {
        return [-1, e.message];
    }
};

module.exports = {
    getAllRole,
};