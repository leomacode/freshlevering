# Prijslijst bijwerken — handleiding

De website haalt de prijzen op uit één Google Sheet. U past het Sheet aan,
de website volgt vanzelf. U hoeft niets aan de website zelf te veranderen.

## Eenmalig instellen

1. Ga naar [sheets.google.com](https://sheets.google.com) en maak een nieuw
   bestand aan.
2. Kies **Bestand > Importeren** en upload `prijslijst-template.csv`.
3. Vervang alle voorbeeldregels door uw eigen producten en prijzen.
4. Kies **Bestand > Delen > Publiceren op internet**.
5. Kies het juiste tabblad en kies **Door komma's gescheiden waarden (.csv)**.
6. Klik **Publiceren** en kopieer de link die u krijgt.
7. Open `prijslijst.html` in een teksteditor. Bovenin staat:

   ```js
   const SHEET_CSV_URL = "";
   ```

   Plak uw link tussen de aanhalingstekens en sla op.

Klaar. Vanaf nu leest de website uw Sheet.

## Dagelijks gebruik

Pas het Sheet aan en sla op. De website is binnen ongeveer tien minuten bij.

### De kolommen

| Kolom | Wat u invult |
|---|---|
| `categorie` | Bijvoorbeeld Groenten, Fruit, Tomaten |
| `product` | De naam zoals de klant hem ziet |
| `eenheid` | Kilo, Stuk, Bos, Bak, Doos 5 kg |
| `prijs_ex` | Prijs **exclusief BTW**, met een punt: `1.95` |
| `btw` | Laat leeg. Alleen invullen bij 21% |
| `status` | `normaal`, `dagprijs`, `seizoen` of `uitverkocht` |
| `b2c` | `TRUE` = ook voor particulieren, `FALSE` = alleen zakelijk |

### Belangrijk

**Prijzen vult u altijd exclusief BTW in.** De website telt de BTW er zelf bij
voor particuliere klanten. Vult u een prijs inclusief BTW in, dan rekent de
website er nog een keer BTW overheen.

**Geen prijs vandaag?** Laat `prijs_ex` leeg. De klant ziet dan **Dagprijs**
in plaats van een leeg vakje.

**Tijdelijk niet leverbaar?** Zet `status` op `uitverkocht`. Verwijder de regel
niet — zo staat het product er met één wijziging weer op.

**Grootverpakking?** Zet `b2c` op `FALSE`. Zakelijke klanten zien het product
wel, particulieren niet.

**De volgorde in het Sheet is de volgorde op de website.** Wilt u een product
hogerop? Verplaats de regel in het Sheet.

## Foto's

Op dit moment staan er tekeningen op de homepage in plaats van foto's. Die
zijn tijdelijk — zodra u een echte foto neerzet, gebruikt de website die
automatisch.

Zet uw foto's als **.jpg** in de map `build/img/` met precies deze namen:

```
hero.jpg                grote foto bovenaan de homepage
groenten.jpg
fruit.jpg
aardappelen-uien.jpg
kruiden-cressen.jpg
champignons.jpg
gesneden-groenten.jpg
```

U hoeft verder niets te wijzigen. Staat er geen `.jpg`, dan valt de website
terug op de tekening.

Gebruik lichte foto's op een witte achtergrond bij daglicht, liggend formaat,
ongeveer 1200 bij 800 pixels. Geen donkere foodfotografie.

## Nog invullen voor de site live gaat

Op de website staat op een aantal plekken `TODO`. Dat is expres — die gegevens
hebben wij niet gekregen. Vul aan voordat u live gaat:

- adres en bezorggebied (plaatsnamen en postcodes)
- KvK-nummer en BTW-nummer in de footer
- echte klantcitaten en cijfers bij "Wat onze klanten zeggen"
- de zeven foto's hierboven (nu nog tekeningen)

## Controleren of alles werkt

Open `prijslijst.html` in de browser met `#selftest` achter de link, dus
`prijslijst.html#selftest`. Druk op F12 en kijk bij Console. Daar hoort te
staan: `selftest OK`. Staat er iets anders, dan klopt er iets niet in de
berekening — neem dan contact op met de ontwikkelaar.
