---
author:
    - mos
published: "2017-09-07 09:30"
...
Startskott för WM i Uptime 2017/2018
======================================


[FIGURE src=image/uptime/badge-2017-2018.png?w=w2&h=200&a=2,0,0,0&f1=pixelate,12,0&cf caption="Nu börjar det!"]

Då börjar det igen. Deltagarna har legat i hårda träningsläger sedan i våras då förra omgången avslutades. Nu gäller det att ha bästa uptime under 2017/2018. Närmare bestämt så startar tävlingen den 15 september i samband med GrillCon och avslutas den 15:e maj 2018.

Vi ser fram emot fina siffror på uptime, likaväl som vi ser fram emot de ursäkter som komma skall för siffror som kunde varit bättre.

<!--more-->



WM i Uptime för hemmaservrar {#wm}
-------------------------------------------

[FIGURE src=image/uptime/badge-2017-2018.png?w=c5 class="right" caption="Guld-badge till vinnaren."]

Så här fungerar det.

WM står för WebbprogrammeringsMästerskap. Om det var otydligt.

Fixa en hemmaserver, en Raspberry PI eller någon annan dator som du kan kalla din hemmaserver. Den måste finnas hemma där du bor.

Installera något bra på den, spelar ingen roll vad, men troligen är det en Linux/Unix-server i botten.

Tävlingen startar vid höstgrillen och pågår näst intill vårgrillen.

Mest uptime vinner.

De som inte når full uptime kan ändå få en *honourable mention*. Oklart om det är bra eller ej.

Vinnare får en guld-badge som delas ut i samband med vårgrillen.



Resultatlistan {#res}
-------------------------------------------

Du finner resultatlistan via [uptime.dbwebb.se](http://uptime.dbwebb.se/).

Via den webbplatsen finner du också information om hur du kan rapportera din nuvarande uptime varje morgon.

I korta drag handlar det om att lägga in en kommando i din crontab som ser ut så här.

```text
00 08 * * * wget -qO /dev/null "http://uptime.dbwebb.se/add/?who=mos+desktop&uptime=$(uptime | awk '{print $3}')"
```

Kommandot rapporterar din uptime varje morgon klockan 08:00, men se till att byta ut identifieraren `who=mos+desktop` till din egen, det är alltså strängen `mos+desktop` som du byter till något eget så vi känner igen dig och din server.



Topplistan över ursäkter {#ursakt}
-------------------------------------------

Många är ursäkterna när uptime tappas.

> Allinrep: Jag var dum nog att flytta mitt under tävlingen. Efter 123 dagar i täten blev det tyvärr dags att flytta servern till en ny garderob. 

> Thulin: ...en thailändsk rislykta i ett ställverk med strömavbrott i stora delar av Malmö som följd...

> TitoN: Min tv brann upp och säkringen gick.

> Pansar: Svärmor dammsög i sovrummet och råkade dra ut sladden, när jag var på semester.

> Pansar: Sladden trillade ur nätaggregatet av sig själv.

> Pansar: Elektrikern bröt strömmen i huset för att koppla el (fegis).

Vi följer det [kommande årets ursäkter och status](https://dbwebb.se/t/6636) i forumet.


/staff-mos
