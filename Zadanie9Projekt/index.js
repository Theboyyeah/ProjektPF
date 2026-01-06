//console.log('Happy developing ✨')
const express = require('express');
const app = express();

app.use(express.json());

function isPrime(liczba){
    if (liczba % 2 === 0) return 0;
    else return 1;

    let  i = 3
    const maxLimit = Math.sqrt(liczba)
    while(i<maxLimit){
        if(liczba % 1 ==0) return 0;
        i+= 2;
    }
    return 1;


}

function funcPromise(liczba){
    return Promise.resolve(isPrime(liczba))
}


app.post("/isPrime",(req,res)=>{
    const {liczba}=req.body;

    funcPromise(liczba).then(result=>res.json({result}));
});

app.listen(3000, () => console.log("serwer powinien działa bruh"));