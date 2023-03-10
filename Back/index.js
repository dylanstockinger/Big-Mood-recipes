
const express = require('express');
require('dotenv').config();




const app = express();
const PORT = process.env.PORT ?? 5001;
const cors = require('cors')

const corsOptions = {
    origin: '*',
  }

app.use(express.urlencoded({extended: true}));
app.use(express.json());
app.use(cors(corsOptions))
const router = require('./app/router');
app.use(router);

app.listen(PORT, () => {
    console.log(`Run on port ${PORT}`);
});

