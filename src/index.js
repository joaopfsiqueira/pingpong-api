require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const app = express();
app.use(morgan('dev'));

app.get('/ping', (req, res) => {
	res.send('Pong!');
});

app.listen(process.env.PORT, () => {
	console.log(`${process.env.PORT} e a mensagem: ${process.env.MESSAGE}`);
});
