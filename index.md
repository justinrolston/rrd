---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default 
---

<h1>{{ site.posts.first.title }}</h1>
{{ site.posts.first.content }}
<hr>
<br>
<h2>Previous Articles</h2>

<ul class="post-list list-unstyled">
  {% for post in site.posts offset: 1 %}
    <li class="post-item">
        <div class="post-info">
          <p>{{ post.date | date: "%b %d, %Y" }}</p>
                <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">
                <h3>{{ post.title }}</h3>
          </a>
        </div>
    </li>
  {% endfor %}
  
</ul>

