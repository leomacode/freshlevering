# S&A Freshlevering — website

Dutch fresh fruit and vegetable delivery. Horeca first, consumers second.
Ordering runs through WhatsApp — no cart, no checkout, no accounts.

```
brand/       card.jpg, logo.png, DESIGN.md   brand assets + design tokens
build/       index.html, prijslijst.html     the site
             brand.css, SETUP.md, img/
             prijslijst-template.csv         seed data for the Google Sheet
prompts/     website-design-prompt.txt       original design + build briefs
reference/   competitor-list.pdf, *.png      structure sample + Stitch history
```

## Where things stand

Both pages are built and working. Serve the folder and open them:

```
cd build && python3 -m http.server 8000
```

- `build/index.html` — homepage
- `build/prijslijst.html` — price list. Add `#selftest` to the URL and check
  the console; it should log `selftest OK — 20 checks passed`.
- `build/SETUP.md` — Dutch handleiding for the client.

Still runs on sample data, and photos and TODO fields are unfilled, so it is
not launch-ready. Stitch was dropped after five rounds — the design language
lives in `brand/DESIGN.md` and the built pages now.

## Going live

1. Import `build/prijslijst-template.csv` into a Google Sheet.
2. Replace every sample row with S&A's own products and prices. Prices go in
   **excluding BTW** — the site adds BTW for consumers automatically.
3. Bestand > Delen > Publiceren op internet > tab > CSV > Publiceren.
4. Paste the URL into `SHEET_CSV_URL` at the top of `build/prijslijst.html`.

After that the client edits the Sheet and the site follows within ~10 minutes.
Blank price = "Dagprijs". Set `status` to `uitverkocht` rather than deleting a
row, so it comes back with one edit.

## Open questions for the client

Every one of these shows as a visible `TODO` on the site rather than a guess:

- KvK and BTW number for the footer.
- Street address, and whether the footer should name a delivery area at all.

Not open, decided:
- **Photos** — seven Unsplash stock photos are installed. Swap in S&A's own
  when there are any; see `build/img/CREDITS.txt`.
- **Testimonials** — removed. S&A is new and has no customers, and invented
  reviews are illegal in the EU. Replaced with a "Nieuw in de regio" section
  and three factual figures. Add real quotes once there are real customers.
- **Bezorggebied section** — removed at the client's request.

## Do not

- Publish the competitor's prices or SKU list from `reference/`. It is a
  structure sample only.
- Ship any invented address, review, statistic or KvK number.
- Move `prijslijst-template.csv` away from `prijslijst.html` — it is the
  offline fallback and the path is relative.
