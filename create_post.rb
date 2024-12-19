#!/usr/bin/env ruby

require 'date'

def create_post(issue, title, author, canva_link)
  date = Date.today
  formatted_title = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
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

  File.open(filename, 'w') do |file|
    file.write(content)
  end

  puts "Post created: #{filename}"
end

if ARGV.length < 4
  puts "Usage: ruby create_post.rb 'Issue' 'Post Title' 'Author Name' 'Canva Link'"
else
  issue, title, author, canva_link = ARGV
  create_post(issue, title, author, canva_link)
end