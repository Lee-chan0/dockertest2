import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('Welcome Docker with Express!!!!!!!!!!!!!!!');
});

app.listen(3000, () => {
    console.log('Server is Open');
});
