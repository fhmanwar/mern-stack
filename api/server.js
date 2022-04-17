const express = require('express');
const config = require('./config');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('*' , (req , res)=>{
   res.status(404).send({
        code: 1,
        message: "api path not found",
        data: [],
   });
})

app.listen(config.port, config.host, () => {
    console.log(`REST API listening at http://${config.host}:${config.port}/ `);
});
