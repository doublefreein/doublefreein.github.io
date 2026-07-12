# Doublefree.in — Improvement TODO

## Done
- [x] Add blog (card grid with teasers, excerpts, and custom styling)
- [x] Replace the "Admin" site author with a team identity: avatar, bio,
      contact email, and real social links (dead placeholders removed)
- [x] Fix homepage feature-row buttons — architecture now links to
      `/lion-roar-advait`, supply chains to the Decentralization post
- [x] Add a Projects page showcasing real work (Lion-Roar of Advait,
      Free-Repairable Desktop, GNU/Linux in schools, hosted websites);
      linked in the main navigation
- [x] Add a 404 page (`_pages/404.md`)
- [x] Set `og_image` so shared links show a card image
- [x] Delete the orphan `_pages/tags/` stub pages (referenced tags no
      post uses; the liquid `/tags/` archive covers tag browsing)
- [x] Un-hide the Atom feed
- [x] Transcribe the "Switch To GNU/Linux Today" poster into the post
      body (searchable, accessible, translatable)
- [x] Use relative links between posts instead of absolute URLs
- [x] Add alt text to post images; removed two references to missing
      image files in Mud, Soil & Lime
- [x] Slim the vendored theme fork: removed theme CHANGELOG, demo
      screenshots, staticman/travis configs, npm packaging, Rakefile,
      gemspec, and the theme's .github files (incl. FUNDING.yml pointing
      at the theme author); Gemfile now lists gems explicitly
- [x] Add a GitHub Actions build check (jekyll build on PR/push)

## Needs an account / a decision from you
- [ ] Use a `@doublefree.in` email for contact instead of the gmail alias
      (a digital-sovereignty org should eat its own dog food) — needs a
      mailbox or forwarding set up at the domain registrar
- [ ] Add analytics (privacy-respecting fits the mission: Plausible,
      Umami, or GoatCounter; set `analytics.provider: custom`) — needs an
      account or self-hosted instance
- [ ] Enable comments — giscus (GitHub Discussions) is free, open source,
      and fits the audience — needs Discussions enabled on the repo and
      IDs from giscus.app

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

## Medium priority — maintenance
- [ ] Longer term: consider switching from the full fork to
      `remote_theme: mmistakes/minimal-mistakes` + overrides only, so the
      theme can be updated (current fork is MM 4.24, from 2020)

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
