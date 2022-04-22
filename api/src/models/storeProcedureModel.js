const { dbConn } = require("../config");

const callSP = async (next) => {
    try {
        var querySql = 'CALL ??';
        const [rows, fields] = await dbConn.promise().query(querySql, ['loadData']);
        if (rows.length > 0) {
            console.log([1, rows]);
            return [1, rows];
        } else {
            return [0, null];
        }
    } catch (e) {
        next(e);
    }
};

module.exports = {
    callSP,
};