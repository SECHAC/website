---
author: mos
published: 2016-05-25
...
Redo för GrillCon 2016 Vår?
======================================

[FIGURE src=/image/vimmel/vem-ar-mos.jpg?w=w2&h=200&cf&a=0,0,0,0&a=0,0,20,0&f0=colorize,40,0,0,0&f1=pixelate,8,0 caption="Vem är mos?"]

Då närmar det sig, två dagar kvar till GrillCon 2016 Vår.

Mycket som skall hända -- anmälningar att räkna ihop, shoppinglista att uppdatera, team att aktivera, väder att beställa och en karta så alla hittar hit.

<!--more-->



Vackert Väder är beställt
--------------------------------------

Låt mig bara notera att min inköpsanmälan om "Vackert Väder" blev beviljad, även i år. Känns stabilt och bra.



Anmälningsläget?
--------------------------------------

Detta året valde vi att samla in anmälningar via [GitHub](https://github.com/dbwebb-se/grillcon/issues/2), [Facebook](https://www.facebook.com/events/209303972782488/) och [Google+](https://plus.google.com/u/1/events/cfsffovrs2gr2c6uggvsneo6f1k). Facit blev följande, per dagens datum.

| Källa    | Antal |
|----------|-------|
| Facebook |  19   |
| GitHub   |  15   |
| Google+  |  3 (alla mos:ar)|

Risk finns för dubletter. Men vad gör man inte för valfriheten?

Möjligen är det lite mer scary att Facebook-kanalen vann, undertecknad hade ju gärna föredragit att GitHub-kanalen var i klar majoritet.

Till nästa år tror jag dock vi kan avfärda Google+ som en kanal för anmälningar...



Det ryktas om en Tipspromenad!
--------------------------------------

Jag fick möjligheten att se frågorna i förväg men vägrade naturligtvis då jag avser att vinna en ärlig kamp bland giganter av tipspromenadsutförare.

Man undrar stilla vad priset blir. Senaste årens priser har varit ett (halvt) kilo kaffe och ett annat år var det en server för rackmontering. Vad kan det bli i år? 



Hitta hit?
---------------------------------------

Studentviken, BTH, Karlskrona -- eller mer exakt:

> N56 11.220 E15 35.600

Karta, för den som inte har GPS.

<div style="width: 630; height: 400px; margin-bottom: 22px;" id="map"></div>
<script>
function initMap() {
    var mapDiv = document.getElementById('map');
    var map = new google.maps.Map(mapDiv, {
        center: {lat: 56.187, lng: 15.593},
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.HYBRID
    });

    var marker = new google.maps.Marker({
        position: {lat: 56.187, lng: 15.593},
        map: map,
        title: 'GrillCon, Studentviken, BTH!'
    });
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
    async defer></script>


Synes!

/staff-mos
