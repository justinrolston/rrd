# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Site Overview

This is a Jekyll blog called "Rolston Rundown" - a family newsletter site that displays embedded Canva designs. The site displays the latest newsletter issue on the homepage and provides an archive of all issues.

## Development Commands

- **Start development server**: `bundle exec jekyll serve`
- **Local URL**: http://localhost:4000/
- **Create new post**: `./create_post.rb "ISSUE_NUMBER" "TITLE" "AUTHOR" "CANVA_LINK"`

Example post creation:
```bash
./create_post.rb "26" "Why do we put up a Christmas tree?" "MJ Rolston" "https://www.canva.com/design/DAGZwoAvrtM/uV51siXkaokLe3x9iTSW8g/view"
```

## Architecture

### Post Structure
- Posts are stored in `_posts/` with filename format: `YYYY-MM-DD-issue-NUMBER.md`
- Each post contains minimal front matter with a Canva link that gets embedded via the `canva.html` include
- Posts use the `post` layout and `newsletter` category
- Content is primarily the embedded Canva design via `{% include canva.html %}`

### Key Files
- `create_post.rb`: Ruby script that generates new post files with proper front matter
- `_includes/canva.html`: Template that embeds Canva designs as responsive iframes
- `index.html`: Homepage that displays the most recent post
- `articles.md`: Archive page listing all posts
- `latest.md`: Redirect page that forwards to the newest post

### Site Configuration
- Uses `jekyll-bootstrap-theme` instead of default minima theme
- Key plugins: jekyll-feed, jekyll-paginate, jekyll-redirect-from, jekyll-pdf-embed
- Site displays latest newsletter issue on homepage with embedded Canva design
- Posts are date-ordered with issue numbers in titles

### Live Sites
- Primary site: https://rr.everydayhomeschooler.com/
- GitHub Pages: https://justinrolston.github.io/rrd/
- GitHub repository: https://github.com/justinrolston/rrd