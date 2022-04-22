const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const config = require('./src/config');
const routes = require('./src/routes/index');
const handleErrors = require('./src/middlewares/errorHandler');

const app = express();

// cors untuk mengambil data dari server yang memiliki domain atau port yang berbeda dengan aplikasi client
// contoh WEB menggunakan app.domain.com, sedangkan API menggunakan api.domain.com
// var corsOptions = {
//     origin: `http://${HOSTNAME}:${PORT}`
// };

// app.use('*', cors(corsOptions));
app.use(cors());

// parse request of content-type: application/json
app.use(bodyParser.json());
// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/' , (req , res)=>{
   res.status(404).send({
        code: 1,
        message: "api path not found",
        data: [],
   });
})

// routes
app.use('/api/', routes);

// Custom Error Handling
app.use(handleErrors);

app.listen(config.port, config.host, () => {
    console.log(`REST API listening at http://${config.host}:${config.port}/ `);
});
