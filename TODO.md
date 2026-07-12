# Doublefree.in — Improvement TODO

## Done
- [x] Add blog (card grid with teasers, excerpts, and custom styling)

## High priority — trust & identity
- [ ] Use a `@doublefree.in` email for contact instead of the gmail alias
      (a digital-sovereignty org should eat its own dog food)
- [ ] Replace the "Admin" site author with a real name/team identity;
      fill in avatar, bio, and the empty social links in `_config.yml`
      (or remove the dead placeholder links)
- [ ] Fix homepage feature-row buttons: "Eco-Conscious Architecture" and
      "Transparent Supply Chains" both point to `/about-us` — create or link
      dedicated pages for those pillars (architecture → `/lion-roar-advait`?)
- [ ] Showcase real work more prominently: Lion-Roar of Advait, the hosted
      school/NGO websites (ncrunners, fursat) deserve a Projects/Portfolio
      page with photos, not just bullet links on Solutions

## High priority — site plumbing
- [ ] Add analytics (privacy-respecting, self-hosted fits the mission:
      Plausible, Umami, or GoatCounter; set `analytics.provider: custom`)
- [ ] Add a 404 page (`_pages/404.md` with `permalink: /404.html`)
- [ ] Set `og_image` in `_config.yml` so shared links show a card image
      on WhatsApp/Twitter/Signal
- [ ] Decide on the orphan `_pages/tags/` pages (untracked in git; they
      reference tags — education, gnu-linux, open-source — that no post
      uses). Either align post tags with them or delete them; the liquid
      `/tags/` archive already covers tag browsing
- [ ] Un-hide the Atom feed (`atom_feed.hide: false`) — RSS fits the
      open-web ethos and costs nothing

## Medium priority — content structure
- [ ] Rework `/ethical-technology`, `/secure`, and `/floss`: they read as
      essays, not evergreen pages. Either convert to blog posts or tighten
      them into short pillar pages that link to posts
- [ ] Standardize post tags/categories taxonomy (currently a mix of
      Freedom / Free-Software / Technology / Education; pick a small,
      consistent set — tags changed now will change nothing, but changing
      categories changes post URLs, so do it once, early)
- [ ] Give every post a teaser image of its own (several currently share
      LinuxInSchools.png or fall back to the logo)
- [ ] "Switch To GNU/Linux Today" is image-only — add the text content of
      the poster to the post body (searchable, accessible, translatable)
- [ ] Use relative links between posts instead of absolute
      `https://doublefree.in/...` URLs
- [ ] Add alt text to all images (accessibility + SEO)
- [ ] Enable comments — giscus (GitHub Discussions) is free, open source,
      and fits the audience

## Medium priority — maintenance
- [ ] Slim the vendored theme fork: delete theme leftovers that aren't
      yours — `CHANGELOG.md` (100 KB), `screenshot.png`,
      `screenshot-layouts.png`, `staticman.yml`, `.travis.yml`,
      `minimal-mistakes-jekyll.gemspec`, `package.json`, `Rakefile`
- [ ] Longer term: consider switching from the full fork to
      `remote_theme: mmistakes/minimal-mistakes` + overrides only, so the
      theme can be updated (current fork is MM 4.24, from 2020)
- [ ] Add a GitHub Actions build check (jekyll build on PR/push) so broken
      front matter never reaches the live site

## Nice to have
- [ ] Search page link in navigation (lunr search is already enabled but
      only reachable via the magnifier icon)
- [ ] Newsletter or contact form (Formspree/self-hosted) on Join Us —
      email-only has friction
- [ ] Dark-mode skin variant
- [ ] Hindi/Marathi translations of key pages — matches the
      schools-in-Bharat audience
- [ ] Photo gallery for Lion-Roar of Advait (PDFs of floor plans are
      currently the only artifacts)
