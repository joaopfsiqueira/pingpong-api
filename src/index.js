const express = require('express');
const morgan = require('morgan');

const app = express();

app.use(morgan('dev'));

app.get('/ping', (req, res) => {
	res.send('Pong!');
});

app.listen(process.env.PORT || 2222, () => {
	console.log('Server running on port 2222');
});
