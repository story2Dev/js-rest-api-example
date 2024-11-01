import express from 'express';

const app = express();

app.get('/healthz', (req, res) => {
    res.send({status: 'OK' });
});

app.listen(3000, () => {
    console.log('Listening on 3000');
});