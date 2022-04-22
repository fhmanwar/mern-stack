const { dbConn } = require("../config");

const getAll = async (next) => {
    try {
        const [rows, fields] = await dbConn.promise().query('SELECT * FROM roles');
        if (rows.length > 0) {
            console.log([1, rows]);
            return [1, rows];
        } else {
            return [0, null];
        }
    } catch (e) {
        // return [-1, e.message];
        next(e);
    }
};

const getId = async (id, next) => {
    try {
        var querySql = 'SELECT * FROM ?? WHERE ?? = ? ';
        const [rows, fields] = await dbConn.promise().query(querySql, ['roles', 'id', id]);
        if (rows.length > 0) {
            // console.log([1, rows]);
            return [1, rows];
        } else {
            return [0, null];
        }
    } catch (e) {
        // return [-1, e.message];
        next(e);
    }
};

const add = async (data, next) => {
    try {
        var querySql = 'INSERT INTO ?? (??,??,??,??) VALUES (?,?,?,?)';
        // insert multiple data
        // var data = [["shahid","hello", "hello","hello"],["Rohit","Hi","hello","hello"]];
        // const [rows, fields] = await dbConn.promise()
        //                 .query(querySql, ['roles', 
        //                     'name', 'description', 'is_active', 'created_at',
        //                     data
        //                 ]);
        const [rows, fields] = await dbConn.promise()
                        .query(querySql, ['roles', 
                            'name', 'description', 'is_active', 'created_at',
                            data.name, data.description, 1, new Date()
                        ]);
        console.log(rows);
        if (rows.insertId > 0) {
            var res = {
                id: rows.insertId,
                name: data.name, 
                description: data.description
            };
            // console.log([1, rows]);
            return [1, res];
        } else {
            return [0, null];
        }
    } catch (e) {
        // return [-1, e.message];
        next(e);
    }
};

const upd = async (data, id, next) => {
    try {
        var querySql = 'UPDATE ?? SET ?? = ?, ?? = ?, ?? = ? WHERE ?? = ?';
        const [rows, fields] = await dbConn.promise()
                        .query(querySql, ['roles', 
                            'name', data.name,
                            'description', data.description, 
                            'updated_at', new Date(),
                            'id', id
                        ]);
        console.log(rows);
        if (rows.affectedRows > 0) {
            var res = {
                id: id,
                name: data.name, 
                description: data.description
            };
            // console.log([1, rows]);
            return [1, res];
        } else {
            return [0, null];
        }
    } catch (e) {
        // return [-1, e.message];
        next(e);
    }
};

const del = async (id, next) => {
    try {
        var querySql = 'DELETE FROM ?? WHERE ?? = ? ';
        const [rows, fields] = await dbConn.promise().query(querySql, ['roles', 'id', id]);
        console.log(rows);
        if (rows.affectedRows > 0) {
            // console.log([1, rows]);
            // return [1, rows.affectedRows];
            return [1, null];
        } else {
            return [0, null];
        }
    } catch (e) {
        // return [-1, e.message];
        next(e);
    }
};

module.exports = {
    getAll,
    getId,
    add,
    upd,
    del,
};