import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('어떤데 ㅋ');
});

app.listen(3000, () => {
    console.log('Server is Open');
});
