# The Rolstons

A Jekyll-powered family newsletter website that displays embedded Canva designs.

## Live Sites
- **Primary**: https://therolstons.com/
- **GitHub Pages**: https://justinrolston.github.io/rrd/

## Development

### Prerequisites
- Ruby
- Bundler
- Jekyll

### Setup
```bash
bundle install
```

### Run Development Server
```bash
bundle exec jekyll serve
```
Local site: http://localhost:4000/

### Creating New Posts
Use the provided Ruby script to generate newsletter posts:

```bash
./create_post.rb "ISSUE_NUMBER" "POST_TITLE" "AUTHOR_NAME" "CANVA_DESIGN_URL"
```

Example:
```bash
./create_post.rb "26" "Why do we put up a Christmas tree?" "MJ Rolston" "https://www.canva.com/design/DAGZwoAvrtM/uV51siXkaokLe3x9iTSW8g/view"
```

## Architecture

- **Posts**: Stored in `_posts/` with embedded Canva designs
- **Theme**: jekyll-bootstrap-theme
- **Key Features**: Responsive Canva embeds, latest post on homepage, archive page
- **Plugins**: jekyll-feed, jekyll-paginate, jekyll-redirect-from, jekyll-pdf-embed

## Repository
- **GitHub**: https://github.com/justinrolston/rrd

## Resources
- [Jekyll Plugins](https://github.com/planetjekyll/awesome-jekyll-plugins)