Zadanie 1 

❌ 3.0 Zaimplementuj funkcję isSorted, która sprawdza czy dana funkcja jest posortowana zgodnie z podaną funkcją porównawczą Link do commita 1

✅ 3.5 Zaimplementuj funkcję, która zsumuje liczby po wierszach z trzech list na wejściu; wykorzystaj funkcję sprowadzi funkcję z trzema argumentami, do funkcji z dwoma 

✅ 4.0 Zaimplementuj funkcję setHead, która doda element na początku listy

❌ 4.5 Zaimplementuj funkcję append, która doda element we wskazanym miejscu w liście 

❌ 5.0 Zaimplementuj funkcję, która policzy kwadrat liczb z dwóch list (po wierszach) za pomocą funkcji map oraz funkcji anonimowej 

Kod: Link do zadania 1

https://github.com/user-attachments/assets/filmik/


Zadanie 2 link do image:
https://hub.docker.com/repository/docker/mackos23/zadanie2pf/general

Zadanie 3:
✅ 3.0 zwrócą wynik funkcji tail, która usuwa pierwszy element z listy
(parameter); należy rozważyć przypadek Nil jako parametr link: https://github.com/Theboyyeah/ProjektPF/commit/cd808ce
 ❌3.5 zwróci wynik funkcji drop, która usuwa n elementów z listy
dwukierunkowej           
 ❌4.0 zwróci wynik funkcji dropWhile, która usuwa n elementów z listy
dwukierunkowej, które spełniają warunek funkcji (parametr); należy
wykorzystać podejście pattern match     
❌4.5 zwróci wynik funkcji foldLeft wykorzystując do tego companion
object        
 ❌5.0 zwróci wynik funkcji concatenate na dwóch listach (parametry),
która zwraca jedną listę

Zadanie4:
Należy wykorzystać typ opcjonalny i rozszerzyć endpointy o endpoint,
który:
✅3.0 zwróci taki sam wynik jak zad.1 4.5 ale wykorzysta typ opcjonalny
https://github.com/Theboyyeah/ProjektPF/commit/4f479de

❌3.5 zwroci wariancję z listy; do implementacji wykorzystać należy typ
opcjonalny

❌4.0 zwróci listę (option), która jest wynikiem połączenia dwóch list
(option); w przypadku gdy jedna z list jest None, funkcja powinna
zwrócić None

❌4.5 zwróci listę za pomocą metody mojeMap[A,B,C](a: Option[A], b:
Option[B])(f:(A,B)=>C):Option[C]; należy wykorzystać metodę flatMap
oraz map

❌5.0 zwróci taki średnią (mean) z listy zwracając Either

Zadanie 5:

Należy rozszerzyć endpointy o endpoint, który:
✅3.0 zwróci słownik z liczbą powtarzających się liczb za pomocą funkcji
mapreduce dla list z liczbami

https://github.com/Theboyyeah/ProjektPF/commit/708d82f 
❌3.5 zwróci słownik z liczbami podniesionymi do sześcianu za pomocą
funkcji mapreduce dla list z liczbami

❌4.0  zwróci słownik (student, godziny nauki), która wykorzysta funkcją
mapreduce oraz groupBy dla słownika na wejściu

❌4.5 zwróci słownik (zdanie, wektor), która wykorzysta funkcję
mapreduce oraz bagOfWords

❌5.0 zwróci słownik (student, średnia ocen), która wykorzysta funkcję
mapreduce oraz join; na wejściu  są dwie listy: (numer_indeksu,
student), (numer_indeksu, kurs, ocena)

Zadanie 6:
❌3.0 Zaimplementuj funkcję isSorted, która sprawdza czy dana funkcja
jest posortowana zgodnie z podaną funkcją porównawczą

❌3.5 Zaimplementuj funkcję, która zsumuje liczby po wierszach z trzech
list na wejściu; wykorzystaj funkcję sprowadzi funkcję z trzema
argumentami, do funkcji z dwoma

✅4.0 Zaimplementuj funkcję setHead, która doda element na początku
listy https://github.com/Theboyyeah/ProjektPF/commit/e876b17 

❌4.5 Zaimplementuj funkcję append, która doda element we wskazanym
miejscu w liście

❌5.0 Zaimplementuj funkcję, która policzy kwadrat liczb z dwóch list
(po wierszach) za pomocą funkcji map oraz funkcji anonimowej

Zadanie 7:
Należy zaimplementować w Haskellu endpointy, które:
✅3.0 zwróci wartość między 0, a maxvalue of Int włącznie
❌3.5 zwróci wartość między 0, a 1 (Double) z wyłączeniem 1
❌4.0 zwróci pary (Int, Double), (Double, Int) oraz krotki (Double,
Double, Double) wykorzystując funkcje z ocen 3.0 oraz 3.5
❌4.5 zwróci wartość jak w funkcji 3.5, ale wykorzysta map
❌5.0 zwróci wartość jak w funkcji 3.5, ale wykorzysta flatMap
https://github.com/Theboyyeah/ProjektPF/commit/562ad02 
(Main.hs lub Main pliki bo wysłałem wszytskie nraz niestety)

Zadanie 8:

Należy zaimplementować w Haskellu endpointy, które:
❌3.0 wykorzysta metodę map fuktora do wykonania funkcji dodawania lub
odejmowania na dwóch wartość przyjętych na wejściu
✅3.5 zwróci wartość konkatenacji trzech list za pomocą monoidy

https://github.com/Theboyyeah/ProjektPF/commit/09e3adb 

❌4.0 zwróci wartość sumy listy liczb lub zwróci nil; zaimplementuj
wykorzystując monady   
❌4.5 zwróci zadanie z zestawy 6 na ocenę 4.0 i wykorzysta metodę
combine oraz join
❌5.0 zwróci dla listy minimum 3 elementów typu int mapę: liczba
elementów, suma,  wartość minimalna, wartość maksymalna; wykorzysta do
tego monadę oraz metodę foldMap


Zadanie 9:
Należy zaimplementowaś w j. JavaScript endpointy, które:

✅3.0 zwróci wartość binarną czy podana na wejściu liczba jest liczbą
pierwszą; wykorzysta Promise
https://github.com/Theboyyeah/ProjektPF/commit/24bd6e4
https://github.com/Theboyyeah/ProjektPF/commit/28586a2 
https://github.com/Theboyyeah/ProjektPF/commit/6211fb8 

 ❌ 3.5  zwróci posortowaną listę; wykorzysta Promise


 ❌4.0 zwróci wynik funkcji z zad. 5 na 4.0 (mapreduce); wykorzysta
worker_threads

 ❌4.5  zwróci wynik bagOfWords dla danego tekstu na wejściu; stworzy
pulę workterów

 ❌5.0 zwróci wynik funkcji z zad. 5 na 4.5; wykorzysta Promise.all oraz
funkcję map



Zadanie 10:
https://github.com/Theboyyeah/ProjektPF/commit/d3da12f 
niestety na tę chwilę nie mogę wysąłć na Azure więc narazie zostawiam tutaj w readme


