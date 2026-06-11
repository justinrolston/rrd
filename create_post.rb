#!/usr/bin/env ruby

require 'date'

def create_canva_post(issue, title, author, canva_link)
  date = Date.today
  filename = "_posts/#{date}-issue-#{issue}.md"

  content = <<~TEMPLATE
    ---
    layout: post
    title:  "Issue #{issue} - #{title} by #{author}"
    date:   #{date} #{Time.now.strftime('%H:%M:%S %z')}
    categories: newsletter
    canva: #{canva_link}
    ---
    {% include canva.html %}

  TEMPLATE

  write_post(filename, content)
end

def create_text_post(issue, title, author)
  date = Date.today
  filename = "_posts/#{date}-issue-#{issue}.md"

  content = <<~TEMPLATE
    ---
    layout: post
    title:  "Issue #{issue} - #{title} by #{author}"
    date:   #{date} #{Time.now.strftime('%H:%M:%S %z')}
    categories: newsletter
    ---

    Write your article here in Markdown — headings, **bold**, _italic_,
    lists, [links](https://therolstons.com/), images, and blockquotes all work.

  TEMPLATE

  write_post(filename, content)
end

def write_post(filename, content)
  File.open(filename, 'w') { |file| file.write(content) }
  puts "Post created: #{filename}"
end

def usage
  puts <<~USAGE
    Usage:
      Canva post: ruby create_post.rb 'Issue' 'Post Title' 'Author Name' 'Canva Link'
      Text post:  ruby create_post.rb --text 'Issue' 'Post Title' 'Author Name'
  USAGE
end

args = ARGV.dup

if args.first == '--text'
  args.shift
  if args.length < 3
    usage
  else
    issue, title, author = args
    create_text_post(issue, title, author)
  end
elsif args.length < 4
  usage
else
  issue, title, author, canva_link = args
  create_canva_post(issue, title, author, canva_link)
end
