
const express = require('express');
require('dotenv').config();
var cors = require('cors')



const app = express();
const PORT = process.env.PORT ?? 5001;

app.use(express.urlencoded({extended: true}));
app.use(express.json());
app.use(cors())
const router = require('./app/router');
app.use(router);

app.listen(PORT, () => {
    console.log(`Run on port ${PORT}`);
});

