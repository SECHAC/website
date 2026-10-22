# Statiskt arkiv av grillcon.dbwebb.se

Sajten är fryst. Inga fler uppdateringar planeras, och arkivet ersätter PHP-sajten (Anax) som tidigare låg på do3.

- Gjord 2026-10-22 från den levande sajten med `wget --mirror --page-requisites --adjust-extension --convert-links`, plus sex sidor
  som finns på servern men inte länkas från sajten (`arkiv/grillcon-2024-host`, `arkiv/grillcon-2025-var` och fyra `minne`-sidor).
- Filnamn med query-sträng (bilder som gjordes av `img.php`/CImage, t.ex. `?w=720&h=240&cf`) har fått rena namn
  (`hackning__w-720-h-240-cf-a-0,0,10,0.jpg`) och alla länkar är omskrivna. Länkar till sajten själv är rotrelativa (`/arkiv/...`).
- Bilder som sajten hämtade från `dbwebb.se` (tre stycken) ligger nu lokalt i `image/`.
- Sidor heter `x.html`; en webbserver ska svara på `/x` med `x.html` (Caddy: `try_files {path} {path}.html {path}/index.html`).
- Länkkontroll: 806 interna länkar, 1 saknad: `/arkiv/grillcon-2020-var` (404 redan på live-sajten; sidan finns bara som `.../minne`).
- Kvar externt (inbäddningar och tredjepartsbilder, som på originalet): YouTube, Google Maps/Kalkylark, Flickr, Instagram,
  `upload.wikimedia.org`, Facebook- och Twitter-delningslänkar, anmälningsformuläret `forms.gle`.
- `/img.php`-anrop (CImage) finns inte längre. Gamla länkar utifrån till `/image/...?...` ger 404.
