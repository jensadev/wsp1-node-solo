# wsp1-node-solo


## Stridssystem

Kod och databas utifrån [böckernas stridssystem](http://www.ensamma-vargen.se/pdf/referensark.pdf).

Databasen för stridssystemet knyts ihop i tabellen combat som plockar ihop värden från 4 andra tabeller.
SQL-frågan för att få ut ett stridsresultat blir därför komplex.

```
SELECT 
  combat_ratio.value AS cr,
  combat_numbers.value AS cn,
  enemy.endurance AS enemy,
  hero.endurance AS hero
FROM
  combat
JOIN combat_ratio ON combat.ratio = combat_ratio.id
  AND combat_ratio.value = ?
JOIN combat_numbers ON combat.random = combat_numbers.id
  AND combat_numbers.value = ?
JOIN combat_results enemy ON combat.enemy = enemy.id
JOIN combat_results hero ON combat.hero = hero.id;
```
Värdet för ratio och slumptalet är den input som frågan tar. Resultatet ser ut som följande

```
"cr":0,"cn":7,"enemy":"9","hero":"1
```

Här är:

* cr, stridsration (combat ratio, -11 - 11)
* cn, slumptalet(1-10)
* enemy, fiendens förlorade kroppspoäng(endurance), d = död
* hero, hjältens förlorade kroppspoäng(endurance), d = död

### Användning

För att förhindra fusk så sker beräkningen på servern.
Routerna för combat är:

```
 GET /combat/
 POST /combat/resolve/:ratio
``` 

På combat sidan så förväntas det att användaren räkna ut stridens ratio och anger den(kan självklart automatiseras).
Det är skillnaden mellan hjältens stridspoäng och fiendens. Din stridspoäng(+ - vapen) - fiendens stridspoäng = ratio.

Ratio skickas sedan med hjälp av [Axios](https://github.com/axios/axios) till servern där ett nummer slumpas och resultatet
hämtas från databasen. 

Se [combat.js](https://raw.githubusercontent.com/jensnti/wsp1-node-solo/main/public/javascripts/combat.js) för klientkoden för denna AJAX request.