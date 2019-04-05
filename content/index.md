---
views:

    flash:
        region: flash
        template: default/content
        data:
            meta:
                type: content
                route: grillcon-2019-var/block/flash

    article-toc:
        region: sidebar-right
        template: default/article-toc
        sort: 1
        data:
            meta:
                type: article-toc

    share-this:
        region: main
        template: default/share
        sort: 2

    sidebar-anmal:
        region: sidebar-right
        template: default/block
        sort: 1
        data:
            meta:
                type: content
                route: grillcon-2019-var/block/sidebar-anmalan

author:
    - mos
revision:
    "2019-03-27": (A, mos) Inför GrillCon 2019 vår.
...
GrillCon 2019 Vår
===============================

Vårens GrillCon går av stapeln 16, 17 och 18 maj 2019. 

Det blir Hackathon-torsdag med kvällsmat på Biobaren, konferens-fredag med klassisk grill och utflykts-lördag med fotoklubben.

<!--
[ANMÄL DIG NU!](https://goo.gl/f7SQdv)
-->

Ta chansen att lära dig något nytt och umgås med befintliga och gamla studenter, eller nätverka och skaffa livslånga kontaktnät av programmerare och likasinnade, eller bara besök din gamla skola och träffa gamla studiekamrater.



Övergripande planering {#plan}
--------------------------------

Det övergripande schemat ser ut så här.

| Dag          | Tid   | Vad händer?                        |
|--------------|:-----:|------------------------------------|
| Torsdag      | 09-17 | Hackathon i labbsalen              |
|              | 18-   | Kvällsmat på Biobaren              |
| Fredag       | 10-15 | Konferens                          |
|              | 17-   | Klassisk Grill                     |
| Lördag       | 09-15 | Utflykt med fotoklubben            |

Här följer mer information om respektive programpunkt.



Torsdag: Hackathon och mat {#torsdag}
--------------------------------

Vår variant av Hackathon är programmeringsstuga i labbsalen på torsdagen, då hänger lärare, studenter och tillresande i labbsalen. Välkommen att delta, förlägg din arbetsdag till labbsalen och insup atmosfären. Koda loss eller sitt och prata med likasinnade.

Eventuellt fixar vi lite korta presentationer under eftermiddagen, planering pågår. 

Vi har diskussioner med studentföreningen SIS om att anordna en session om Capture The Flag och hackningsinspirerade tävlingar.

På torsdagskvällen är det mat på Biobaren.



Fredag: Konferensdag {#konferens}
--------------------------------

Plats: Sal (ej bestämt).

Konferensdelen pågår 10-15 med paus för lunch klockan 12-13.

Följande är övergripande schemat för seminarierna.

| Tid            | Vad händer?                         |
|:--------------:|-------------------------------------|
| 10:00          | Konferensen öppnas (mos)            |
| 10:10          | Teknologi-snick-snack (pecha kucha) |
| 11:10          | Regexp med Rex                    |
| 12:00          | Lunch                               |
| 13:00          | Eftermiddagen öppnas (mos)          |
| 13:10          | Seminarie (planering pågår)         |
| 14:10          | Jane, om att bli chef för programmerare. |



### Kl 10: Teknologi-snick-snack {#10}

Tanken är kort-korta presentationer som följer en gemensam form likt [Pecha kucha](https://sv.wikipedia.org/wiki/Pecha_kucha). Om vi efterliknar pecha kucha upplägget så gäller 20 slides á 20 sekunder (6 minuter och 40 sekunder) följt av frågor, efter 10 minuter är det nästa talare.

Gongongen ringer högt när tiden gått ut.

Presentatörer äro följande (planering pågår).

| Presentatör       | Typ             | Titel |
|-------------------|-----------------|-------|
| Peter Hamfelt     | Pecha kucha     | Erfarenheter av att utveckla en intelligent chattbot. |
|                   | Pecha kucha     |       |
|                   | Pecha kucha     |       |
|                   | Pecha kucha     |       |


Här följer information om föredrag och fördragshållare under pecha kucha sessionen.



### Peter om en intelligent chattbott {#10-1}

<div class="clearfix" markdown="1">

[FIGURE src=image/personer/peter-hamfelt.jpg?w=c5&h=200&cf&a=23,45,35,10 caption="Peter Hamfelt, Utvecklare och framtida chef" class="right"]

Peter Hamfelt, student på Software Enginnering och allmänt aktiv som ansvarig på KIDS (idrottsföreningen för studenter på BTH) och ledamot i utbildningsföreningen BITS).

Peter hinner även med sina studier som nu omfattar ett grupprojekt där en intelligent chattklient/chattbot utvecklas för att automatisk besvara frågor likt en kundtjänst.

Peter kommer prata om tekniken och erfarenheter från projektet.

</div>



### Kl 11: Regex med Rex {#11}

[FIGURE src=image/personer/leopold-olsson.jpg?w=c5&h=200&cf caption="Leopold Olsson, Cybercom Group" class="right"]

Leopold Olsson, aka bobbzorzen, har alltid haft en förkärlek till reguljära uttryck och kommer nu hit för att ge oss en genväg in i en underbar värld av ett kraftfullt verktyg som kan se ut så här `/^[Ll]eo(?:pold)?$/`.

Leo gick ut programmet Webbprogrammering för et tantal år sedan och flyttade till Jönköping för att jobba på Cybercom Group som konsult och software developer. Leo har varvat med olika uppdrag såsom att programmera automatiserade tester till gräsklippare på Huskvarna med uppdrag inom undervisning av Python på Jönköping University.

Nu är Leo på en allmän konferensresa och besöker oss alltså för att prata om ett av sina stora intressen, reguljära uttryck. Missa inte möjligheten att lära dig regex på en timme, med Rex, som leo också kallas.



### Kl 13: Seminarie {#13}

Planering pågår. Arbetshypotesen är att ha fokus mot positionering och statusuppdateringar av diverse fysiska objekt, insamling av data, övervakning, monitorering, säkerhet.



### Kl 14: Jane om att vara chef för programmarere {#14}

[FIGURE src=image/personer/jane-strandberg.jpg?w=c5&h=200&cf caption="Jane Strandberg, Prisjakt" class="right"]

Jane Strandberg, aka Sylvanas, är en välkänd profil på dbwebb, grillcon och BTH. Jane gick ut programmet Webbprogrammering och stannade sedan några år för att undervisa på BTH. Därefter fortsatte Jane till Malmö för att jobba som programmerare på Prisjakt. Efter något år på Prisjakt blev Jane erbjuden en position som chef och teamledare över en grupp av programmerare på Prisjakt.

Jane kommer nu hit för att prata om hur det är att vara chef för programmerare och hur det känns att lyftas upp som chef över sina forna kollegor. Låt oss fråga henne om ens syn förändras på verksamheten när man går från programmerare till chef.

Kanske kan vi få lite tips och trix om hur man manipulerar sin chef kanske, om det går? Eller vad man behöver göra för att få en chefsroll, vilka kvaliteter är det som en chef behöver?



Fredag: Klassisk Grill {#grill}
--------------------------------

[FIGURE src=image/grill-album/mos_grill.jpg?w=730&h=240&cf&a=16,0,0,0 caption="Grillspett i sann spiritualistisk anda."]

Traditionell grill med förrätt, varmrätt, efterrätt och snacks.

Förhoppningsvis har någon hackat och preppat inför grillspetten. Har vi ännu mer tur har någon handlat och det finns en grill som vi kan låna och någon som bär den till grillplatsen.

Under kvällen sker bland annat följande:

* Riktigt svår tipspromenad.
* WM i kubb, utmana lärarteamet.
* Prisutdelning för [WM i Uptime 2018/2019](https://dbwebb.se/forum/viewtopic.php?f=25&t=7680).

Vi har ännu inte fått klart om kårpuben kommer vara öppen, vi jobbar på det.

> _Kårpuben har extra öppet 15-17 inför grillen. Externa gäster måste finnas anmälda på en gästlista._

> _Kåren har extra öppet i puben till klockan 23 i anslutning till grillen._



Lördag: Utflykt med Fotoklubben {#utflykt}
--------------------------------

[FIGURE src=image/fotoklubben/aspo-2017-var_1600.jpg?w=740&h=240&cf&a=30,0,0,0,0&f0=colorize,40,0,0,0 caption="Vårutflykten 2017 gick till Aspö."]

Utflykten pågår ungefär mellan 09-15. Plats för starten meddelas senare tillsammans med fler detaljer om dagen.

Utflykten arrangeras av dbwebb's Foto- och Fritidsklubb. Det blir ett hemligt resmål som innebär enklare vandring/promenad bland sevärdheter och natur. En halvdagsutflykt i (hav), skog och mark i all enkelhet. Ta med egen matsäck, kläder för väder och en kamera om andan faller på.

Du kan se [videos med fotokollage](https://www.youtube.com/playlist?list=PLKtP9l5q3ce9Vp6AiNCGAA65LO4uKVUOI) från några av de tidigare utflykterna.

[Fotoklubben håller till i forumet](https://dbwebb.se/forum/viewforum.php?f=66).



Hitta hit {#hitta}
--------------------------------

Här är vi.

<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1UNmeJUpCMmbFy7dAFLzOwzwfFps" width="640" height="480"></iframe>



Parkera vid BTH {#parkera}
--------------------------------

Det är fri parkering men du behöver ett parkeringskort att lägga i framrutan. Du kan hämta parkeringskortet i receptionen, byggnaden som ser ut som en rund badtunna i trä i extra stort format.



Syfte {#syfte}
--------------------------------

Berätta kort varför vi gör detta, så det blir tydligt.



Arrangörer {#arrangorer}
--------------------------------

Den Executiva Kommittén sköter all planering och träffas en gång i månaden, året runt. Här nämns (några av) de som deltagit under 2018/19.

* Daniel Persson, kh31d4r, sekreterare (representerar industrin och gamla PT:are)
* Björn Andersson (representant BITS, Webb)
* Peter Hamfelt (representant BITS, SE)
* Vidar Tedenbrant, Leonore (representant SIS, Webb)
* Mikael Roos, mos, diktator (representant BTH, dbwebb, Webb, gamla PT:are)

BITS är utbildningsföreningen för "[Blekinge Ingenjörstekniska Studenter](https://www.facebook.com/bthstudent.bits/)".

BTH är [Blekinge Tekniska Högskola](https://bth.se).

Beteckningen dbwebb representerar den allmänna community som finns kring webbplatsen dbwebb.se och de kurser som där bedrivs.

Lärarteamet kring dbwebb med Kenneth Lewenhagen, Andreas Arnesson, Emil Folino (och mos) är aktiva i allmän planering och genomförande av evenemanget. 

PT:are är studenter som vid BTH gått ett utbildningsprogram inom Programvaruteknik, någon gång sedan starten 1990. Här inkluderas bland annat utbildningarna Programvaruteknik, Programvaruingenjör, (International) Software Engineer, Webbprogrammering.

SE är utbildningsprogrammet "Software Engineering" (och "International Software Engineering").

SIS är studentföreningen "[Sektionen för Internetbaserad Socialisering](https://sis.bthstudent.se/)".

Web är utbildningsprogrammen "Webbprogrammering 180hp campus" och "Webbprogrammering 120hp distans".
