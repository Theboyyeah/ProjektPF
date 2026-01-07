//console.log('Happy developing ✨')
const express = require('express');
const app = express();

app.use(express.json());



function funcPromise(liczba){
    return Promise.resolve(isPrime(liczba))
}


app.post("/isPrime",(req,res)=>{
    const {liczba}=req.body;

    funcPromise(liczba).then(result=>res.json({result}));
});

app.listen(3000, () => console.log("serwer powinien działa bruh"));