---
title: Speakers
layout: page
---


{% for speaker in site.data.speakers %}
<div class="col-md-6" style="padding-right:2rem">
<h3><a id="{{speaker.name|slugify}}"></a>{{ speaker.name }}</h3>
<span class="glyphicon glyphicon-home" aria-hidden="true"></span> {{ speaker.affiliation }}
{% if speaker.link %}<br><span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span> <a href="{{ speaker.link }}">Homepage</a>{% endif %}
{% if speaker.title %}<br><span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span> <a href="/program/">{{ speaker.title }}</a>{% endif %}
{% if speaker.date %}<br><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> {{ speaker.date }}{% endif %}

{% if speaker.bio %}
<h4>Speaker's Bio</h4>

<div class="text-muted text-justify">
{% if speaker.picture %}
<img class="img-thumbnail" style="margin:8px;max-width:120px;height:auto" align="left" src="{{ 'assets/images/speakers/' | append: speaker.picture | relative_url }}">
{% endif %}
{{ speaker.bio }}
</div>
{% elsif speaker.picture %}
<br>
<img class="img-thumbnail" style="margin:8px;max-width:120px;height:auto" align="left" src="{{ 'assets/images/speakers/' | append: speaker.picture | relative_url }}">
{% endif %}
<div class="clearfix"></div>
</div>
{% endfor %}

<div style="height:4em;" class="row col-md-12"></div>