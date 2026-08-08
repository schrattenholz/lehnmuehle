<%-- ============================================================================
     JSON-LD / schema.org -- strukturierte Daten fuer Suchmaschinen und LLMs.

     Eingebunden aus Includes/Head.ss.

     Eine Wahrheit pro Datum: alle Werte stammen aus SiteConfig bzw. dem
     jeweiligen Produkt -- nichts ist hier hartkodiert. Wo eine strukturierte
     Quelle fehlt, wird das Feld bewusst NICHT ausgegeben, statt es zu
     erfinden (Begruendungen am Ende der Datei).
     ========================================================================= --%>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": ["GroceryStore", "Farm"],
  "@id": "{$AbsoluteBaseURL}#hof",
  "name": "$SiteConfig.BusinessName.JS",
  "url": "$AbsoluteBaseURL",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "$SiteConfig.Street.JS",
    "postalCode": "$SiteConfig.ZIP.JS",
    "addressLocality": "$SiteConfig.City.JS",
    "addressCountry": "DE"
  }<% if $SiteConfig.PhoneE164 %>,
  "telephone": "$SiteConfig.PhoneE164.JS"<% end_if %><% if $SiteConfig.Email %>,
  "email": "$SiteConfig.Email.JS"<% end_if %><% if $SiteConfig.MainContact %>,
  "founder": { "@type": "Person", "name": "$SiteConfig.MainContact.JS" }<% end_if %>,
  "currenciesAccepted": "EUR"
}
</script>

<% if $Preise %>
<%-- Produktseite: erkennbar an der has_many-Relation Preise, die es nur auf
     Schrattenholz\Order\Product gibt. --%>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "$Title.JS",
  "url": "$AbsoluteLink"<% if $MetaDescription %>,
  "description": "$MetaDescription.JS"<% end_if %><% if $DefaultImage %>,
  "image": "$DefaultImage.AbsoluteURL"<% end_if %>,
  "brand": { "@type": "Brand", "name": "$SiteConfig.BusinessName.JS" },
  "offers": [
    <%-- Ein Angebot je Variante. Der Preis kommt aus PriceObject() -- der
         kundengruppenabhaengige Preis der Variante, fuer anonyme Besucher
         also der Privatkundenpreis. Preis.Price selbst ist durchgehend 0.00
         und waere als Quelle falsch. --%>
    <% loop $Preise %>{
      "@type": "Offer",
      "sku": "$ID",
      "name": "$SummaryTitle.JS",
      "url": "$Up.AbsoluteLink",
      "priceCurrency": "EUR"<% if $PriceObject.Price %>,
      "price": "$PriceObject.Price"<% end_if %>,
      "availability": "$SchemaOrgAvailability",
      "seller": { "@id": "{$AbsoluteBaseURL}#hof" }
    }<% if not $IsLast %>,<% end_if %><% end_loop %>
  ]
}
</script>
<% end_if %>

<%-- ============================================================================
     BEWUSST NICHT AUSGEGEBEN -- jeweils mit Begruendung:

     openingHoursSpecification
       SiteConfig.OpeningDaysText ist Freitext-HTML ("<p>Mo - So<br>08:00 -
       20:00 Uhr</p>"), maschinell nicht zerlegbar. Die Zeiten hier hart
       einzutragen erzeugte eine zweite Wahrheit. Erst strukturierte Felder
       anlegen, dann ausgeben.

     geo (lat/lng)
       Nicht in SiteConfig vorhanden. Zwei Felder, einmalig zu pflegen.

     hasCertification (Demeter, DE-OEKO-022)
       Nirgends als Datenfeld hinterlegt, nur als Text und Logo im Content.

     aggregateRating / review
       Keine eigenen Bewertungsdaten. Fremde Portaldaten hier auszugeben waere
       eine Falschaussage.

     VERFUEGBARKEIT ist dagegen geloest: $SchemaOrgAvailability (Preis, via
     schrattenholz/ordersale) zaehlt bewusst den Lagerbestand OHNE
     Reservierungen. FreeQuantity/Reserved ziehen ab, was gerade in irgendeinem
     Warenkorb der letzten 11 Minuten liegt -- fuers Badge im Shop richtig, fuer
     strukturierte Daten schaedlich, weil ein Crawler sonst ein flackerndes
     Signal saehe.
     ========================================================================= --%>
