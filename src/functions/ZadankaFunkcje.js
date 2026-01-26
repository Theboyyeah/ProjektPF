const { app } = require('@azure/functions');

// Funkcja 1Sprawdza czy dana liczba jest parzysta 1 jesli tak 0 jesli nie
app.http('parzysta', {
    methods: ['GET', 'POST'],
    authLevel: 'anonymous',
    handler: async (request, context) => {
        context.log('Sprawdzanie czy liczba jest parzysta');
        

        let num;
        if (request.query.get('num')) {
            num = parseInt(request.query.get('num'));
        } else {
            const body = await request.json();
            num = body.num;
        }
        
        const isEven = num % 2 === 0 ? 1 : 0;
        
        return { 
            jsonBody: { 
                DlaLiczby: num,
                Parzystość: isEven 
            } 
        };
    }
});

// Funkcja 2 sprawdza czy dane słowo to słowo klucz w moim przypadku jest to sa'camochód' jesli słowo rpzesłane
// = samochód to zwraca 1 jesli nie to 0
app.http('sprawdzSlowoKlucz', {
    methods: ['GET', 'POST'],
    authLevel: 'anonymous',
    handler: async (request, context) => {
        context.log('sprawdzenie słowa');
        
        let slowo;
        if (request.query.get('slowo')) {
            slowo = request.query.get('slowo');
        } else {
            const body = await request.json();
            slowo = body.slowo;
        }
        
        const czyPoprawne = slowo === 'samochod';
        
        return { 
            jsonBody: { 
                otrzymaneSlowo: slowo,
                czyPoprawne: czyPoprawne,
                widomość: czyPoprawne ? 'Tak to jest słowo klucz' : 'Nie  to nie jest słwo klucz'
            } 
        };
    }
});

// Funkcja 3 to obliczanie silni dla np silnia 5 itd
app.http('silnia', {
    methods: ['GET', 'POST'],
    authLevel: 'anonymous',
    handler: async (request, context) => {
        context.log('silnia');
        
  
        let n;
        if (request.query.get('n')) {
            n = parseInt(request.query.get('n'));
        } else {
            const body = await request.json();
            n = body.n;
        }
        
        let wynik = 1;
        for (let i = 2; i <= n; i++) {
            wynik *= i;
        }
        
        return { 
            jsonBody: { 
                n: n,
                silnia: wynik
            } 
        };
    }
});



// funckje testuej odpowiednio :
// Funckja 1: curl "http://localhost:7071/api/parzysta?num=4"
//Funkcja 2 : curl "http://localhost:7071/api/silnia?n=5"
// funckja 3: curl "http://localhost:7071/api/sprawdzSlowoKlucz?slowo=samochód"