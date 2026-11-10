# CS Futures in the Age of AI: website

Static website for the **CS Futures in the Age of AI** seminar series, organized by the
CS AI Council, Department of Computer Sciences, University of Wisconsin–Madison.

Intended URL: <https://wrightstephen.github.io/cs-futures-ai/>

## Contents

| File               | Purpose                                                                 |
| ------------------ | ----------------------------------------------------------------------- |
| `index.html`       | Single-page site (intro, upcoming/past talks, contact).                  |
| `talks.json`       | Talk data (speaker, link, title, date, times). Edit this to add talks. |
| `build.py`         | Regenerates the talk listings in `index.html` and `calendar/*.ics`.     |
| `calendar/`        | Generated `.ics` files: one per talk, plus `all-talks.ics`.             |
| `style.css`        | Stylesheet modeled on the UW Theme used by cs.wisc.edu (Red Hat fonts via Google Fonts). |
| `content-notes.md` | Raw content instructions.                                               |
| `assets/img/`      | Images; `uw-crest.svg` is the UW crest from cs.wisc.edu.                 |
| `.nojekyll`        | Tells GitHub Pages to serve files as-is.                                |

## Adding or changing a talk

1. Edit `talks.json`. Times are local Madison time (24-hour `HH:MM`); `abstract` and
   `affiliation` are optional.
2. Run `python3 build.py` (Python 3.9+, no dependencies).
3. Open `index.html` in a browser to check, then commit and push.

Each talk gets "Add to calendar" links for Apple/iCal (`.ics`), Google Calendar, and
Outlook (Microsoft 365). Talks move from "Upcoming" to "Past" automatically, in the
visitor's browser, once their end time has passed.

The calendar descriptions include `site_url` from `talks.json`. Update it and rebuild if
the site is hosted elsewhere.

## Publishing on GitHub Pages

1. Create an empty public repo named `cs-futures-ai` at <https://github.com/new>
   (no README or license).
2. From this directory:

   ```bash
   git remote add origin https://github.com/wrightstephen/cs-futures-ai.git
   git push -u origin main
   ```

3. In the repo on GitHub: **Settings → Pages → Build and deployment**, set
   **Source** to "Deploy from a branch", **Branch** to `main` and `/ (root)`, and save.
   The site appears at <https://wrightstephen.github.io/cs-futures-ai/> within a minute or two.
